<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\Http\Requests\RequestLogin;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Socialite;
use App\User;
use Session;
use Exception;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    // protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('guest')->except('logout');
    }

    public function getFormLogin()
    {
        $title_page = 'Đăng nhập';
        return view('auth.login',compact('title_page'));
    }

    public function postLogin(RequestLogin $request)
    {
        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {
            $this->logLogin();
			\Session::flash('toastr', [
				'type'    => 'success',
				'message' => 'Đăng nhập thành công'
			]);
            return redirect()->intended('/');
            \Session::flash('toastr', [
                'type'    => 'success',
                'message' => 'Đăng nhập thành công'
            ]);
        } else {
            \Session::flash('toastr', [
                'type'    => 'error',
                'message' => 'Đăng xảy ra lỗi không thể đăng nhập'
            ]);
        }
        return redirect()->back()->with("thongbao","Tài khoản mật khẩu không đúng");
    }

    protected function logLogin()
    {
        $log = get_agent();
        $historyLog = \Auth::user()->log_login;
        $historyLog = json_decode($historyLog,true) ?? [];
        $historyLog[] = $log;
        \DB::table('users')->where('id', \Auth::user()->id)
            ->update([
                'log_login' => json_encode($historyLog)
            ]);
    }

    public function getLogout()
    {
        Auth::logout();
        return redirect()->to('/');
    }

    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }
    
    public function handleGoogleCallback()
    {
        try {

            $user = Socialite::driver('google')->user();

            $finduser = User::where('google_id', $user->id)->first();
           

            if($finduser){
                        Auth::login($finduser);
                        \Session::flash('toastr', [
                            'type'    => 'success',
                            'message' => 'Đăng nhập thành công'
                        ]);
                        return redirect()->intended('/');
                        \Session::flash('toastr', [
                            'type'    => 'success',
                            'message' => 'Đăng nhập thành công'
                        ]);

            }else{
                $iii = now();
                $newUser = User::create([
                    'name' => $user->name,
                    'email' => $user->email,
                    'email_verified_at'=> "2021-05-19 21:38:54",
                    'google_id'=> $user->id,
                ]);
                Auth::login($newUser);
                \Session::flash('toastr', [
                    'type'    => 'success',
                    'message' => 'Đăng nhập thành công'
                ]);
                return redirect()->intended('/');
                \Session::flash('toastr', [
                    'type'    => 'success',
                    'message' => 'Đăng nhập thành công'
                ]);
            }

        } catch (Exception $e) {
            return redirect('auth/google');
        }
    }
}
