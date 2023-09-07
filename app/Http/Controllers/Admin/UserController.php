<?php

namespace App\Http\Controllers\Admin;

use App\Models\Categories;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\Admin\AdminRequest;
use App\Models\User;
use App\Repositories\User\UserRepository;

class UserController extends Controller
{
    protected $_user;

    public function __construct(UserRepository $user)
    {
		$this->_user = $user;
        $this->middleware(['permission:Quản lý quản trị']);
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = $this->_user;
        if($request->status){
            $data = $data->where('status',$request->status);
        }
        if($request->keyword){
            $data = $data->where('user_name','like',"%{$request->keyword}%");
        }
        $data = $data->orderBy('id','desc')->get(); 
        
        return view('admin.users.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $today = date('Y/m/d');
        $roles = Role::where('id', '!=', 1)->get();
        return view('admin.users.create' , compact('today','roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AdminRequest $request)
    {
        $data = $request->all(); 
        $data['status'] = $request->status ? 1 : 0;
        $data['password'] = Hash::make($request->password);
        $user = $this->_user->create($data); 

        $user->assignRole($request->role_id);

        activity('admin-create')
        ->causedBy(Auth::user())
        ->performedOn($user)
        ->withProperties(['ip' => $request->ip()])
        ->log('Thêm mới Admin thành công');
        
        return redirect()->route('users.index')->with('success','Thêm mới thành công');
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
        $data = $this->_user->find($id);
        $roles = Role::where('id', '!=', 1)->get();
        $dataRole = $data->roles->pluck('id')->toArray();
        return view('admin.users.edit',compact('data', 'roles', 'dataRole'));
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
        $customer = $this->_user->find($id); 
        $customer['status'] = $request->status ? 1 : 0;
        $customer['date'] = $request->date;
        $customer['user_name'] = $request->user_name;
        $customer['title'] = $request->title;
        $customer['name'] = $request->name;
        $customer['image'] = $request->image;


        if ($request->input('password')) {
            $this->validate($request,
            [
                'password'   => 'required|min:8',
                'repassword' => 'required|same:password'
            ],
            [
                'password.required' => 'Vui lòng nhập mật khẩu.',
                'password.min' => 'Mật khẩu ít hơn 8 ký tự.',
                'repassword.required' => 'Vui lòng nhập lại mật khẩu.', 
                'repassword.same' => 'Mật khẩu không trùng khớp!'
            ]);
            $pass = $request->input('password');
            $customer['password'] = Hash::make($pass);
        }

        $customer->save();

        $customer->syncRoles($request->role_id);

        activity('admin-update')
        ->causedBy(Auth::user())
        ->performedOn($customer)
        ->withProperties(['ip' => $request->ip()])
        ->log('Cập nhật Admin thành công');

        return redirect()->route('users.index')->with('success','Cập nhật thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        activity('admin-delete')
        ->causedBy(Auth::user())
        ->performedOn($this->_user->find($id))
        ->withProperties(['delete' => $id])
        ->log('Xóa Admin thành công');
        $this->_user->destroy($id);
        return back()->with('success','Xóa thành công');
    }
}
