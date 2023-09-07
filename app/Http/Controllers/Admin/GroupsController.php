<?php

namespace App\Http\Controllers\Admin;

use App\Models\Categories;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\GroupAddRequest;
use App\Models\Group;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use Cviebrock\EloquentSluggable\Services\SlugService;

class GroupsController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:Quản lý nhóm người dùng');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $today = date('Y/m/d');

        $data = Group::orderBy('id','desc');
        $check = $request->check;
        if($check){    
            $data = $data->where('name','like', "%{$request->key}%")->where('status',$check);   
        }else{
            $data = $data->where('name','like', "%{$request->key}%");   
        };
        $data = $data->get();    
        return view('admin.group.index', compact('data','today'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(GroupAddRequest $request)
    {
    
        $data = $request->all(); 
        $data['title'] = json_encode($request->title);
        $data['status'] = $request->status ? 1 : 0;
        $cate = Group::create($data);
        activity('admin-group-create')
        ->causedBy(Auth::user())
        ->performedOn($cate)
        ->withProperties(['ip' => $request->ip()])
        ->log('Thêm nhóm người dùng thành công');

        return response()->json([
            'success' => 'success',
            'message' => 'Thêm nhóm người dùng thành công',
        ]);
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
        $data = Group::find($id); 
        $html = View::make('admin.ajax.get-edit-group', compact('data'))->render();
        return response()->json([
            'html' => $html,
            'cate' => $data,
            'url' => route('groups.update',$id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(GroupAddRequest $request, $id)
    {
       
        $cate = Group::find($id); 
        $data = $request->all(); 
        $data['title'] = json_encode($request->title);
        $data['status'] = $request->status ? 1 : 0;
        $cate->update($data);
        activity('admin-group-update')
        ->causedBy(Auth::user())
        ->performedOn($cate)
        ->withProperties(['ip' => $request->ip()])
        ->log('Cập nhật nhóm người dùng thành công');

        return response()->json([
            'success' => 'success',
            'message' => 'Cập nhật thành công'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        activity('admin-group-delete')
        ->causedBy(Auth::user())
        ->performedOn(Group::find($id))
        ->withProperties(['delete' => $id])
        ->log('Xóa nhóm người dùng thành công');
        Group::destroy($id);
        
        return back()->with('success','Xóa thành công thành công');
    }
}
