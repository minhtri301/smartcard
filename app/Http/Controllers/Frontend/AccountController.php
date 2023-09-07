<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Requests\Frontend\LoginRequest;
use App\Models\Customer;
use App\Models\Pages;
use App\Repositories\PagesSub\PagesSubRepository;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AccountController extends Controller
{
    protected $pages;

    public function __construct(PagesSubRepository $pages)
    {
        $this->pages = $pages;
        $this->pages->seoGeneral();
    }

    public function getLogin(){
        $dataHome = Pages::where('type','home')->first();
        $this->pages->createSeo($dataHome);
        if(Auth::guard('customer')->check()){
            return redirect()->route('home.page.information');
        }else{
            return view('frontend.pages.login');
        }
    }

    public function Logout(){
        $this->pages->createSeo();
        Auth::guard('customer')->logout(); 
        return redirect()->route('home.login');
    }

    public function postLogin(LoginRequest $request){
        $customer = Customer::where('user_name', $request->user_name)->first();
        if($customer->status !== 1){
            return response()->json([
                'error' => 'lockCustomer',
                'message' => 'Tài khoản chưa được kích hoạt',
            ]);
        }
        if(isset($request->user_name) && empty($request->passLogin) && empty($request->code)){
            if($customer->check == 1){
                return response()->json([
                    'success' => 'pass',
                ]);
            }else{
                return response()->json([
                    'success' => 'code',
                ]);
            }
        }
        if(isset($request->passLogin) && empty($request->code)){
            if(Hash::check($request->passLogin, $customer->password)){
                Auth::guard('customer')->login($customer);
                return response()->json([
                    'success' => 'successPass',
                    'message' => 'Đăng nhập thành công'
                ]);
            }else{
                return response()->json([
                    'success' => 'errorPass',
                ]);
            }
        }
        if(isset($request->code) && empty($request->pass)){
            if($customer->login_code == $request->code){
                return response()->json([
                    'success' => 'successCode',
                ]);
            }else{
                return response()->json([
                    'success' => 'errorCode',
                ]);
            }
        }
        if(isset($request->pass) || isset($request->repass)){

            $validator = Validator::make($request->all(),[
                'pass' => 'required|min:8',
                'repass' => 'required|same:pass',
             ],[
                'pass.required' => 'Vui lòng nhập mật khẩu.',
                'pass.min' => 'Mật khẩu nhỏ hơn 8 ký tự',
                'repass.required' => 'Vui lòng nhập lại mật khẩu.',
                'repass.same' => 'Mật khẩu không khớp'
             ]);

             if(isset($validator)){
                if ($validator->fails())
                {
                    return response()->json([
                        'success' => 'falsePass',
                        'errorMessage'=>$validator->messages()
                    ]);
                };
            }

            Auth::guard('customer')->login($customer);
            $customer->update([
                'password' => Hash::make($request->pass),
                'check' => 1,
            ]);
            return response()->json([
                'success' => 'successPassNew',
                'message' => 'Đăng nhập thành công'
            ]);
        }
    }
}
