<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Http\Requests\Frontend\ContactRequest;
use App\Models\Contact;
use GrahamCampbell\ResultType\Success;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function postEmail(Request $request){
        Contact::create([
            'email' => $request->email, 
            'type' => 'email',
        ]);
        return back()->with('success','Gửi mail thành công');
    }

    public function postContact(ContactRequest $request){
        $data = $request->all(); 
        $data['status'] = 0;
        $data['type'] = 'contact';
        Contact::create($data);
        return response()->json([
            'success' => true,
        ]);
    }
}
