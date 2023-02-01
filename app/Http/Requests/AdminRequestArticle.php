<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestArticle extends FormRequest
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
            'a_name' => 'required|max:190|min:3|unique:articles,a_name,'.$this->id,
            'a_description' => 'required',
            'a_menu_id' => 'required',
            'a_content' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'a_name.required' => 'Tên không được để trống',
            'a_name.unique' => 'Tên này đã tồn tại',
            'a_name.max' => 'Tên không được quá 190 ký tự',
            'a_name.min' => 'Tên đề phải nhiều hơn 3 ký tự',
            'a_description.required' => 'Mô tả không được để trống',
            'a_menu_id.required' => 'Danh mục không được để trống',
            'a_content.required' => 'Nội dung không được để trống'
        ];
    }
}
