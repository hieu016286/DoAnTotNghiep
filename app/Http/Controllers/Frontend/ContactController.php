<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Mail;
use Session;
use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    public function index()
    {
        return view('frontend.pages.contact.index');
    }

    public function contact()
    {
        return view('frontend.components.contact');
    }
    public function store(Request $request)
    {
        // dd($request);
        $input = $request->all();
        Mail::send('frontend.components.mail', array('c_title'=>$input["c_title"],'c_email'=>$input["c_email"], 'c_phone'=>$input['c_phone'], 'c_content'=>$input['c_content']), function($message){
            $message->to('hieu016286@gmail.com')->subject('Phản hồi từ khách hàng!');
        });
        Session::flash('toastr', 'Bạn đã gửi thành công xin vui lòng chờ phản hồi từ cửa hàng của chúng tôi!');
        return back();
       
    }
}
