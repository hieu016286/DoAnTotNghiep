<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestAttribute extends FormRequest
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

    public function rules()
    {
        return [
            'atb_name' => 'required|max:190|min:3|unique:attributes,atb_name,'.$this->id,
            'atb_type' => 'required',
            'atb_category_id' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'atb_name.required' => 'Tiêu đề không được để trống',
            'atb_name.unique' => 'Tiêu đề này đã tồn tại',
            'atb_type.required' => 'Loại không được để trống',
            'atb_category_id.required' => 'Danh mục không được để trống'
        ];
    }
}
