<?php

namespace App\Http\Controllers\Admin;

use App\Models\Customer;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests\Admin\CustomerRequest;
use App\Repositories\Customer\CustomerRepository;
use App\Http\Requests\Admin\CustomerUpdateRequest;
use App\Models\Group;
use Cviebrock\EloquentSluggable\Services\SlugService;

class CustomerController extends Controller
{
    protected $_customer;

    public function __construct(CustomerRepository $customer)
    {
        $this->middleware('permission:Quản lý người dùng');
		$this->_customer = $customer;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = $this->_customer;
        if($request->group_id){
            $data = $data->where('group_id',$request->group_id); 
        }
        if($request->status){
            $data = $data->where('status',$request->status);
        }
        if($request->keyword){
            $data = $data->where('user_name','like',"%{$request->keyword}%");
        }
        $data = $data->orderBy('id','desc')->get(); 
        
        $cate = Group::all();
        return view('admin.customer.index', compact('data','cate'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $string = '';
        $chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        for($i = 1; $i <= 6; $i++) {
            $position = rand() % strlen($chars);
            $string .= substr($chars, $position, 1).'-';
        }
        $string = substr($string,0,-1);
        $cate = Group::all();
        $today = date('Y/m/d');
        $role = Role::where('id',3)->first();
        return view('admin.customer.create' , compact('today', 'cate', 'string', 'role'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CustomerRequest $request)
    {
        $data = $request->all();     
        $data['slug'] = SlugService::createSlug(Customer::class, 'slug', $request->user_name);
        $data['status'] = $request->status ? 1 : 2;
        $data['meta_title'] = $request->name;
        $customer = Customer::create($data);

        $customer->assignRole($request->role_id);

        activity('user-create')
        ->causedBy(Auth::user())
        ->performedOn($customer)
        ->withProperties(['ip' => $request->ip()])
        ->log('Thêm mới người dùng thành công');
        return redirect()->route('customer.index')->with('success','Thêm thành công');
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
        $cate = Group::all();
        $data = Customer::find($id);
        $role = Role::where('id',3)->first();
        return view('admin.customer.edit',compact('data','cate', 'role'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(CustomerUpdateRequest $request, $id)
    {
        $customer = Customer::find($id); 

        $customer['user_name'] = $request->user_name;
        $customer['date'] = $request->date;
        $customer['group_id'] = $request->group_id;
        $customer['status'] = $request->status ? $request->status : 0;
        $customer['slug']  = SlugService::createSlug(Customer::class, 'slug', $request->user_name);
        $customer['name'] = $request->name;
        $customer['meta_title'] = $request->name;

        $customer->save();

        $customer->syncRoles([$request->role_id]);

        activity('user-update')
        ->causedBy(Auth::user())
        ->performedOn($customer)
        ->withProperties(['ip' => $request->ip()])
        ->log('Cập nhật người dùng thành công');

        return redirect()->route('customer.index')->with('success','Cập nhật thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        activity('user-delete')
        ->causedBy(Auth::user())
        ->performedOn(Customer::find($id))
        ->withProperties(['delete' => $id])
        ->log('Xóa người dùng thành công');

        Customer::destroy($id);

        return back()->with('success','Xóa thành công');
    }

    public function reloadCode(){
        $string = '';
        $chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        for($i = 1; $i <= 6; $i++) {
            $position = rand() % strlen($chars);
            $string .= substr($chars, $position, 1).'-';
        }
        $string = substr($string,0,-1);
        return response()->json([
            'string' => $string,
        ]);
    }
}
