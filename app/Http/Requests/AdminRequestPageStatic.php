<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestPageStatic extends FormRequest
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
            's_title' => 'required|unique:statics,s_title,'.$this->id,
            's_type' => 'required',
            's_content' => 'required'
        ];
    }

    public function messages()
    {
        return [
            's_title.required' => 'Tiêu đề không được để trống',
            's_title.unique' => 'Tiêu đề này đã tồn tại',
            's_type.required' => 'Loại page không được để trống',
            's_content.required' => 'Nội dung không được để trống'
        ];
    }
}
