<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestEvent extends FormRequest
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
            'e_name' => 'required',
            'e_link' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'e_name.required' => 'Tiêu đề không được để trống',
            'e_link.required' => 'Đường dẫn không được để trống'
        ];
    }
}
