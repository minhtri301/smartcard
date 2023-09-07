<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Apps;
use App\Models\Customer;
use App\Rules\RegexPhone;
use App\Models\CustomerApps;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\Frontend\AppRequest;
use App\Http\Requests\frontend\UpdatePassRequest;
use App\Models\Categories;
use App\Models\Pages;
use App\Models\PageSub;
use App\Repositories\PagesSub\PagesSubRepository;
use Carbon\Carbon;

class IndexController extends Controller
{
    protected $pages;

    public function __construct(PagesSubRepository $pages)
    {
        $this->pages = $pages;
        $this->pages->seoGeneral();
    }


    public function index(){
        $dataHome = Pages::where('type','home')->first();
        $this->pages->createSeo($dataHome);
        $contentPage = json_decode($dataHome->content);
        $pageSub = PageSub::all();
        return view('frontend.pages.home',compact('dataHome','contentPage','pageSub'));
    }

    public function information(){
        $this->pages->createSeo();
            $customer = Auth::guard('customer')->user();
            $title = json_decode($customer->group->title);
            return view('frontend.pages.information',compact('customer','title'));
    }

    public function updatePass(){
        $this->pages->createSeo();  
        $customer = Auth::guard('customer')->user();
        return view('frontend.pages.update_pass', compact('customer'));
    }

    public function post_updatePass(UpdatePassRequest $request){
        $customer = Auth::guard('customer')->user(); 
        $customer->update([
            'password' => hash::make($request->passNew),
        ]);
        return redirect()->route('home.page.information')->with('success','Cập nhật thành công');
    }

    public function preview(){
        $this->pages->createSeo();
            $customer = Auth::guard('customer')->user();
            $title = json_decode($customer->group->title);
            $data = CustomerApps::where('customer_id',$customer->id)->whereNotNull('content')->orderBy('position', 'ASC')->get();
            return view('frontend.pages.preview',compact('data','customer','title'));
    }

    public function shareCard($slug){
        $customer = Customer::where('user_name',$slug)->first();
        $this->pages->createSeo($customer);
        if(isset($customer)){
            $title = json_decode($customer->group->title);
            $data = CustomerApps::where('customer_id',$customer->id)->whereNotNull('content')->get();
            return view('frontend.pages.share-card',compact('data','customer','title'));
        }
    }

    public function getIconPreview(Request $request){
        $customer = Customer::where('user_name',$request->slug)->first(); 
        $data = Apps::where('id',$request->id)->where('customer_id',$customer->id)->first(); 
        $html = view::make('frontend.ajax.get-preview-icon-ajax',compact('data'))->render(); 
        return response()->json([
            'html' => $html,
        ]);
    }

    public function update(Request $request){
        $customer_id = Auth::guard('customer')->user()->id;
        $customer = Customer::find($customer_id); 
        $data = $request->all();
        if($request->file('image')){
            $get_image = $customer->image;
            File::delete(public_path($get_image));
            $image = $request->file('image');
            $customer_image = $image->getClientOriginalName();
            $destinationPath = public_path('/ckfinder/uploads/images/Admin/Image-Customer');
            $image->move($destinationPath,$customer_image);
            $data['image'] = '/ckfinder/uploads/images/Admin/Image-Customer/'.$customer_image;
        }else{
            $data['image'] = $customer->image;
        }

        if($request->file('image_cover')){
            $get_image = $customer->image_cover;
            File::delete(public_path($get_image));
            $image = $request->file('image_cover');
            $customer_image = $image->getClientOriginalName();
            $destinationPath = public_path('/ckfinder/uploads/images/Admin/Image-cover-customer');
            $image->move($destinationPath,$customer_image);
            $data['image_cover'] = '/ckfinder/uploads/images/Admin/Image-cover-customer/'.$customer_image;
        }else{
            $data['image_cover'] = $customer->image_cover;
        }
        
        $customer->update($data);

        activity('home-information-update')
        ->causedBy(Auth::guard('customer')->user())
        ->performedOn($customer)
        ->withProperties(['ip' => $request->ip()])
        ->log('Cập nhật thông tin thành công');
        
        return redirect()->route('home.page.information')->with('success','Cập nhật thành công');
    }

    public function details(){
        $this->pages->createSeo();
        if(Auth::guard('customer')->check()){    
            $customer = Auth::guard('customer')->user();
            $customer_id = Auth::guard('customer')->user()->id;
            $data = CustomerApps::where('customer_id',$customer_id)->orderBy('position', 'ASC')->get();
            $getLink = Apps::where('type','link')->get();
            $getBank = Apps::where('type','bank')->get();
            $getPhone = Apps::where('type','phone')->get();
            return view('frontend.pages.update', compact('data','getLink','getBank','getPhone','customer'));
        }else{
            return redirect()->route('home.login');
        }
    }

    public function add_card(Request $request){
        $item = Apps::find($request->id);
        $index = $request->index;
    	$type = $request->type;
        $id = $request->id;
        $input = $request->addInput;
    	if(view()->exists('admin.repeater.row-'.$type)){
		    return view('admin.repeater.row-'.$type, compact('index','item','input'))->render();
		}
		return '404';
    }

    public function loadCard(AppRequest $request){
        $customer_id = Auth::guard('customer')->user()->id;
        $app = Apps::find($request->id); 
        if(isset($request->addInput)){
            if($app->type=='link'){
                $validator = Validator::make($request->all(),[
                    'addInput' => 'url'
                 ],[
                    'addInput.url' => 'Đường dẫn không chính xác.'
                 ]);
            };
            if($app->type=='phone'){
                $validator = Validator::make($request->all(),[
                    'addInput' => new RegexPhone()
                ]);
            }
            if($app->type=='bank'){
                $validator = Validator::make($request->all(),[
                    'addInput' => 'numeric',
                ],[
                    'addInput.numeric' => 'Số tài khoản phải là chữ số',
                ]);
            }
        }
        if(isset($validator)){
            if ($validator->fails())
            {
                return response()->json([
                    'success' => false,
                    'errorMessage'=>$validator->messages()
                ]);
            };
        }
     
        $content = isset($request->addInput) ? $request->addInput : null;
        $position = CustomerApps::where(['customer_id' => $customer_id])->orderBy('position', 'desc')->get();
        $addCusApp = CustomerApps::create([
            'customer_id' => $customer_id, 
            'app_id' => $request->id, 
            'content' => $content,
            'position' => $position ? 0 : $position->position + 1
        ]);

        activity('cus-add-app')
        ->causedBy(Auth::guard('customer')->user())
        ->performedOn($addCusApp)
        ->withProperties(['ip' => $request->ip()])
        ->log('Đã thêm ứng dụng thành công');

        $data = CustomerApps::where('customer_id',$customer_id)->orderBy('position', 'ASC')->get();
        $card_html = View::make('frontend.ajax.get-load-card-ajax',compact('data'))->render();
        return response()->json([
            'success' => 'success',
            'message' => 'Thêm thành công',
            'html' => $card_html,
        ]);
    }

    public function editCard($id){
        $data = CustomerApps::find($id); 
        $card_edit_html = View::make('frontend.ajax.get-edit-card-ajax',compact('data'))->render();
        return response()->json([
            'html' => $card_edit_html,
        ]);
    }

    public function updateCard(Request $request){
        $customerCard = CustomerApps::find($request->id);

        if(isset($request->content)){
            if($customerCard->app->type=='link'){
                $validator = Validator::make($request->all(),[
                    'content' => 'url'
                 ],[
                    'content.url' => 'Đường dẫn không chính xác.'
                 ]);
            };
            if($customerCard->app->type=='phone'){
                $validator = Validator::make($request->all(),[
                    'content' => new RegexPhone()
                ]);
            }
            if($customerCard->app->type=='bank'){
                $validator = Validator::make($request->all(),[
                    'content' => 'numeric',
                ],[
                    'content.numeric' => 'Số tài khoản phải là chữ số',
                ]);
            }
        }
        if(isset($validator)){
            if ($validator->fails())
            {
                return response()->json([
                    'success' => false,
                    'errorMessage'=>$validator->messages()
                ]);
            };
        }

        $customerCard->update([
            'content' => $request->content,
        ]);

        activity('home-card-update')
        ->causedBy(Auth::guard('customer')->user())
        ->performedOn($customerCard)
        ->withProperties(['ip' => $request->ip()])
        ->log('Đã cập nhật ứng dụng thành công');

        $customer_id = Auth::guard('customer')->user()->id;
        $data = CustomerApps::where('customer_id',$customer_id)->orderBy('position', 'ASC')->get();
        $card_html = View::make('frontend.ajax.get-load-card-ajax',compact('data'))->render();
        return response()->json([
            'success' => 'success',
            'message' => 'Thay đổi thành công',
            'html' => $card_html,
        ]);
    }

    public function deleteCard($id){

        activity('cus-delete-app')
        ->causedBy(Auth::guard('customer')->user())
        ->performedOn(CustomerApps::find($id))
        ->withProperties(['delete' => $id])
        ->log('Đã xóa ứng dụng thành công');

        CustomerApps::destroy($id); 
        $customer_id = Auth::guard('customer')->user()->id;
        $data = CustomerApps::where('customer_id',$customer_id)->get();
        $card_edit_html = View::make('frontend.ajax.get-load-card-ajax',compact('data'))->render();
        return response()->json([
            'success' => 'success',
            'message' => 'Đã xóa thành công',
            'html' => $card_edit_html,
        ]);
    }

    public function detailsIcon($id,$input){
        // $alldata = Apps::all();
        $data = Apps::find($id);
        // $addInput = $request->addInput; 
        $details_html = View::make('frontend.ajax.get-edit-card-ajax',compact('data','input'))->render();
        return response()->json([
            'html' => $details_html,
        ]);
    }

    public function cardPosition(Request $request){
        $customer = Auth::guard('customer')->user();
        $apps = CustomerApps::where('customer_id',$customer->id)->get();

        foreach($apps as $key => $item){
            foreach($request->positions as $key2 => $item2){
                if($item->id == $item2){
                    CustomerApps::find($item->id)->update(['position' => $key2 ]);
                }
            }
        }
        return response()->json([
            'success' => 'success',
            'message' => 'Cập nhật thành công!',
        ]);
    }

    public function groupbanner(Request $request){
        $group = Categories::find($request->id); 
        $statistical = $group->statistical + 1;
        $group->update(['statistical' => $statistical]);
        return redirect($request->url);
    }
}
