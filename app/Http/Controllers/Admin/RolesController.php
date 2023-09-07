<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Permission;

class RolesController extends Controller
{
    public function __construct()
    {
        // $this->middleware(['role_or_permission:super-admin|user']);
        $this->middleware('role:Chủ sở hữu');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Role::get();
        return view('admin.roles.list',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $permission = Permission::all();
        return view('admin.roles.create', compact('permission'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try{
            $roleName = $request->name;
            $role = Role::create(['name' => $roleName]);
            if(!empty($request->permission))
            {
                foreach ($request->permission as $permission) {
                    // gán quyền cho vai trò
                    $role->givePermissionTo($permission);
                }
            }
            if($role){
                return redirect()->route('roles.index')->with('success', 'Thêm mới vai trò thành công');
            }
        } catch (\Throwable $e) {
            return 'Có lỗi: "' . $e->getMessage() . '" xảy ra. Xin vui lòng thử lại sau.';
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $dataEditRole = Role::find($id);
        
        if(!empty($dataEditRole)) {
            $pers = $dataEditRole->permissions()->get();

            $dataRoleOrPermission = $pers ? $pers->pluck('id')->toArray() : [];

            $Permission = Permission::all();

            return view('admin.roles.edit', compact('Permission','dataEditRole','dataRoleOrPermission'));

        } else {

            return redirect()->route('roles.index');

        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        if(empty($request->permission)){
            return back()->with('warning','Chọn phân quyền cho vai trò!');
        }

        $dataEditRole = Role::find($id);

        $Permissions = Permission::all();

        foreach ($Permissions as $value) {
            // Xóa hết permission theo role
            $dataEditRole->revokePermissionTo($value);
        }
        foreach ($request->permission as $permission) {
            // Thêm lại permission theo role
            $dataEditRole->givePermissionTo($permission);
        }

        if($request->name){
            $dataEditRole->name = $request->name;
        }

        $dataEditRole->update();

        return back()->with('success', 'Cập nhập phân quyền thành công!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $permissions = Permission::all();

        $role = Role::find($id);

        if($role->name == "Chủ sở hữu" || $id == 1){
            return back()->with('error', 'Vai trò "Chủ sở hữu" mặc định, không thể xóa');
        }

        foreach ($permissions as $value) {
            $role->revokePermissionTo($value);
        }

        if($role->delete()){
            return back()->with('success', 'Xóa vai trò và phân quyền thành công!');
        }
    }

    public function addPermission(Request $request)
    {
        Permission::create(['name' => $request->name]);
        return back();
    }
}
