<?php

namespace App\Http\Controllers\Admin;

use App\Models\Apps;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use App\Repositories\Apps\AppsRepository;

class AppsController extends Controller
{
    protected $_apps; 

    public function __construct(AppsRepository $apps)
    {
        $this->_apps = $apps;
        $this->middleware('permission:Quản lý ứng dụng');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data = $this->_apps;
        if($request->key){
            $data = $data->where('icon_name','like',"%{$request->key}%");
        }
        $data = $data->orderBy('id','desc')->get();
        return view('admin.apps.index', compact('data'));
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
    public function store(Request $request)
    {
        $data = $request->all(); 
        $app = Apps::create($data);
        activity('admin-app-create')
        ->causedBy(Auth::user())
        ->performedOn($app)
        ->withProperties(['ip' => $request->ip()])
        ->log('Thêm mới ứng dụng thành công');
        return back()->with('success','Thêm thành công');
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
        $data = Apps::find($id); 
        $html = View::make('admin.ajax.get-modal-edit-app', compact('data'))->render(); 
        return response()->json([
            'html' => $html,
        ]);
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
        $data = $request->all();
        $infor = Apps::find($request->id); 
        $infor->update($data); 
        activity('admin-app-update')
        ->causedBy(Auth::user())
        ->performedOn($infor)
        ->withProperties(['ip' => $request->ip()])
        ->log('Cập nhật ứng dụng thành công');
        return back()->with('success','Cập nhật thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
        activity('admin-app-delete')
        ->causedBy(Auth::user())
        ->performedOn(Apps::find($id))
        ->withProperties(['deleteIcon' => $id])
        ->log('Xóa ứng dụng thành công');
        
        Apps::destroy($id);
        return back()->with('success','Xóa thành công');
    }
}
