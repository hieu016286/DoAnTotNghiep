<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RequestRegister extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'email' => 'required|max:190|min:3|unique:users,email,'.$this->id,
            'phone' => 'required|unique:users,phone,'.$this->id,
            'password' => 'required',
//            'g-recaptcha-response' => 'required|captcha'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'Tên tài khoản không được để trống',
            'email.required' => 'Email không được để trống',
            'email.unique' => 'Dữ liệu đã tồn tại',
            'email.min' => 'Email phải lớn hơn hoặc bằng 3 ký tự',
            'email.max' => 'Email phải nhỏ hơn hoặc bằng 190 ký tự',
            'phone.required' => 'Số điện thoại không được để trống',
            'phone.unique' => 'Số điện thoại đã tồn tại',
            'password.required' => 'Mật khẩu không được để trống'
        ];
    }
}
