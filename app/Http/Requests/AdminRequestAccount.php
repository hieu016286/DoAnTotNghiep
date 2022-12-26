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
            'email'     => 'required|max:190|min:3|unique:admins,email,'.$this->id,
            'name'      => 'required',
            'phone'     => 'required|unique:admins,phone,'.$this->id,
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
            'email.required'         => 'Dữ liệu không được để trống',
            'email.unique'           => 'Dữ liệu đã tồn tại',
            'phone.unique'           => 'Dữ liệu đã tồn tại',
            'phone.required'         => 'Dữ liệu không được để trống',
            'password.required'      => 'Dữ liệu không được để trống',
        ];
    }
}
