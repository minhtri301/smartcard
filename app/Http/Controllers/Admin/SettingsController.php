<?php

namespace App\Http\Controllers\Admin;

use App\Models\Settings;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;

class SettingsController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:Cài đặt');
    }

    public function getGeneralConfig()
    {
        $data = Settings::where('type', 'general')->first();

        $content = $data ? json_decode($data->content) : null;

        return view('admin.settings.general', compact('content'));
    }

    public function postGeneralConfig(Request $request)
    {
        $options = Settings::where('type', 'general')->first();
        
        $options->content = !empty($request->content) ? json_encode($request->content) : null;
        
        $options->save();

        return back()->with('success', 'Cập nhật thành công');
    }

    // public function cssJsConfig()
    // {
    //     $data = Settings::where('type', 'css-js-config')->first();

    //     $content = json_decode($data->content);

    //     return view('admin.settings.css_js_config', compact('content'));
    // }

    // public function postCssJsConfig(Request $request)
    // {
    //     $data = Settings::where('type', 'css-js-config')->first();
        
    //     $data->content = !empty($request->content) ? json_encode($request->content) : null;
        
    //     $data->save();
        
    //     return back()->with('success', 'Cập nhật thành công');
    // }

    // public function chatConfig()
    // {
    //     $data = Settings::where('type', 'chat-config')->first();

    //     $content = json_decode($data->content);

    //     return view('admin.settings.chat_config', compact('content'));
    // }

    // public function postChatConfig(Request $request)
    // {
    //     $data = Settings::where('type', 'chat-config')->first();
        
    //     $data->content = !empty($request->content) ? json_encode($request->content) : null;
        
    //     $data->save();
        
    //     return back()->with('success', 'Cập nhật thành công');
    // }

    // public function getMailConfig()
    // {
    //     $data = Settings::where('type', 'smtp-config')->first();

    //     $content = json_decode($data->content);

    //     return view('admin.settings.mail_config', compact('content'));   
    // }

    // public function postMailConfig(Request $request)
    // {
    //     $content = Settings::where('type', 'smtp-config')->first();

    //     $content->content = !empty($request->content) ? json_encode($request->content) : null;

    //     $content->save();

    //     return back()->with('success', 'Cập nhật thành công');
    // }

    // public function postSendTestEmail(Request $request)
    // {
    //     $this->initMailConfig();

    //     $data = [];
    //     $email = $request->smtp_email;
    //     $title = $request->smtp_title;

    //     Mail::to($email)->send(new SendTestMail($title));
    
    //     // Mail::send('mail.test', $data,  function ($msg) use ($email, $title) {
    //     //     $msg->from(config('mail.from.address'), config('mail.from.name'));
    //     //     $msg->to($email, config('mail.from.name'))->subject($title);
    //     // });
    
    //     return back()->with('success', 'Gửi mail thành công (test)');
    // }

    // public function getSalary()
    // {
    //     $data = Settings::where('type', 'salary')->first();

    //     $content = $data ? json_decode($data->content) : null;

    //     return view('admin.settings.salary', compact('content'));
    // }

    // public function postSalary(Request $request)
    // {
    //     $options = Settings::where('type', 'salary')->first();
        
    //     $options->content = !empty($request->content) ? json_encode($request->content) : null;
        
    //     $options->save();

    //     return back()->with('success', 'Cập nhật thành công');
    // }
}
