<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestAccount extends FormRequest
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
        $rules = [
            'name' => 'required',
            'email' => 'required|max:190|min:3|unique:admins,email,'.$this->id,
            'phone' => 'required|min:10|max:10|unique:admins,phone,'.$this->id
        ];

        if (!$this->id) 
        {
            $rules['password'] = 'required';
        }

        return $rules;
    }

    public function messages()
    {
        return [
            'name.required' => 'Tên không được để trống',
            'email.required' => 'Email không được để trống',
            'email.unique' => 'Email này đã tồn tại',
            'phone.required' => 'Số điện thoại không được để trống',
            'phone.unique' => 'Số điện thoại này đã tồn tại',
            'phone.min' => 'Số điện thoại phải là 10 chữ số',
            'phone.max' => 'Số điện thoại phải là 10 chữ số',
            'password.required' => 'Mật khẩu không được để trống'
        ];
    }
}
