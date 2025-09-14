<?php

namespace App\Http\Controllers\V1\Admin\Auth;

use App\Http\Controllers\Controller;
use App\Providers\AppServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

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
    protected $redirectTo = AppServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    public function postLogin()
    {
        // Custom login logic can be added here
        $email = request('email');
        $password = request('password');    
        $credentials = ['email' => $email, 'password' => $password];
        if (auth()->attempt($credentials)) {
            // Authentication passed
            return response()->json(['success' => true, 'message' => 'Login successful'])->withHeaders([
            'auth_token' => auth()->user()->createToken('auth_token')->plainTextToken, 'user' => auth()->user(), 'company' => auth()->user()->companies()->first()]);
        }
        return response()->json(['success' => false, 'message' => 'Login failed'], 401);
    }
}
