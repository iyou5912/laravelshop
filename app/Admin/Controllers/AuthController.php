<?php

namespace App\Admin\Controllers;

use Encore\Admin\Controllers\AuthController as BaseAuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AuthController extends BaseAuthController
{
    protected $loginView = 'admin.login';
    
    public function getLogin()
    {

        if ($this->guard()->check()) {
            return redirect($this->redirectPath());
        }

        return view($this->loginView);
    }

    public function postLogin(Request $request)
    {
        // 不包含csrf_token的数据
        $inputall = $request->only([$this->username(), 'password', 'captcha']);
        // 需要在数据库中验证的数据
        $credentials = $request->only([$this->username(), 'password']);
        // 验证规则
        $rules = [
            $this->username()   => 'required',
            'password'          => 'required',
            'captcha'           => 'required|captcha',
        ];
        // 执行验证
        $validator = Validator::make($inputall, $rules);
        // 返回验证错误
        if ($validator->fails()) {
            $errors = $validator->errors();
            // 返回-1代表验证码错误
            return -1;
        }
        // 用户名密码验证
        if ($this->guard()->attempt($credentials)) {
            return $this->sendLoginResponse($request);
        }
        // 用户名密码验证失败返回结果
        return 0;
    }

    protected function sendLoginResponse(Request $request)
    {
        admin_toastr(trans('admin.login_successful'));

        $request->session()->regenerate();

        return 1;
    }
}
