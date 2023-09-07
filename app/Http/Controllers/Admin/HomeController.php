<?php

namespace App\Http\Controllers\Admin;
use App\Models\Apps;
use App\Models\User;
use App\Models\Customer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Group;
use App\Models\visit_log;
use Jenssegers\Agent\Agent;

class HomeController extends Controller
{
     /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }
       /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

     public function index(Request $request)
     {
        $user = User::latest()->get(); 
        $customer = Customer::latest()->get();
        $customerStatus = Customer::where('status',1)->get();
        $group = Group::all();
        $visit = visit_log::all();
        $app = Apps::all();
        return view('admin.home',compact('user','customer','customerStatus','app','group','visit'));
     }

    public function getLayOut(Request $request)
    {
        $index = $request->index;
    	$type = $request->type;
    	if(view()->exists('admin.repeater.row-'.$type)){
		    return view('admin.repeater.row-'.$type, compact('index'))->render();
		}
		return '404';
    }
}
