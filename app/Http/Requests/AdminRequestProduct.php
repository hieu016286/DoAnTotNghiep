<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestProduct extends FormRequest
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
            'pro_name' => 'required|max:190|min:3|unique:products,pro_name,'.$this->id,
            'pro_price' => 'required',
            'pro_description' => 'required',
            'pro_category_id' => 'required',
            'pro_content' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'pro_name.required' => 'Tên sản phẩm không được để trống',
            'pro_name.unique' => 'Tên sản phẩm này đã tồn tại',
            'pro_name.max' => 'Tên sản phẩm không được quá 190 ký tự',
            'pro_name.min' => 'Tên sản phẩm phải nhiều hơn 3 ký tự',
            'pro_price.required' => 'Giá sản phẩm không được để trống',
            'pro_description.required' => 'Mô tả không được để trống',
            'pro_category_id.required' => 'Danh mục không được để trống',
            'pro_content.required' => 'Nội dung không được để trống'
        ];
    }
}
