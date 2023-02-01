<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminSupplierRequest extends FormRequest
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
            'sl_name' => 'required|unique:supplieres,sl_name,'.$this->id,
            'sl_phone' => 'required|min:10|max:10',
            'sl_email' => 'required|email',
            'sl_address' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'sl_name.required' => 'Tên không được để trống',
            'sl_name.unique' => 'Tên này đã tồn tại',
            'sl_phone.required' => 'Số điện thoại không được để trống',
            'sl_phone.min' => 'Số điện thoại phải là 10 chữ số',
            'sl_phone.max' => 'Số điện thoại phải là 10 chữ số',
            'sl_email.required' => 'Email không được để trống',
            'sl_email.email' => 'Email phải đúng định dạng',
            'sl_address.required' => 'Địa chỉ không được để trống'
        ];
    }
}
