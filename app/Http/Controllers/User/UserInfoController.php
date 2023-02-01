<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequestUpdateInfo;
use App\User;
use Illuminate\Support\Facades\Auth;

class UserInfoController extends Controller
{
    public function __construct()
    {
        $this->middleware('verified');
    }
    public function updateInfo()
    {
        return view('user.update_info');
    }

    public function saveUpdateInfo(UserRequestUpdateInfo $request)
    {
        $data = $request->except('_token','avatar');
        $user = User::find(Auth::id());
        if ($request->avatar) {
            if(check_image($user->avatar))
                remove_image($user->avatar);
            $image = upload_image('avatar');
            if ($image['code'] == 1)
                $data['avatar'] = $image['name'];
        }
        $user->update($data);

        session()->flash('toastr', [
            'type'    => 'success',
            'message' => 'Cập Nhật Thành Công'
        ]);

        return redirect()->back();
    }
}
