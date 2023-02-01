<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequestCreateInvoiceEntered extends FormRequest
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

        $pattern = 'required|numeric|min:1';
        $rules = [
            'ie_number' => $pattern,
            'ie_money' => $pattern,
        ];
        if(request()->get('nsx') != null && request()->get('hsd') != null) {
            $rules['nsx'] = 'required|date';
            $rules['hsd'] = 'required|date|after_or_equal:nsx';
        }
        if(request()->get('ie_product_id2') && request()->get('ie_product_id2') != 'none') {
            $rules['ie_number2'] = $pattern;
            $rules['ie_money2'] = $pattern;
            if(request()->get('nsx2') != null && request()->get('hsd2') != null) {
                $rules['nsx2'] = 'required|date';
                $rules['hsd2'] = 'required|date|after_or_equal:nsx2';
            }
        }
        if(request()->get('ie_product_id3') && request()->get('ie_product_id3') != 'none') {
            $rules['ie_number3'] = $pattern;
            $rules['ie_money3'] = $pattern;
            if(request()->get('nsx3') != null && request()->get('hsd3') != null) {
                $rules['nsx3'] = 'required|date';
                $rules['hsd3'] = 'required|date|after_or_equal:nsx3';
            }
        }
        return $rules;
    }

    public function messages()
    {
        return [
            'ie_number.required' => 'Số lượng nhập sản phẩm 1 là bắt buộc.',
            'ie_number.numeric' => 'Số lượng nhập sản phẩm 1 phải là chữ số.',
            'ie_number.min' => 'Số lượng nhập sản phẩm 1 phải lớn hơn 0.',
            'ie_money.required' => 'Giá nhập sản phẩm 1 là bắt buộc.',
            'ie_money.numeric' => 'Giá nhập sản phẩm 1 phải là chữ số.',
            'ie_money.min' => 'Giá nhập sản phẩm 1 phải lớn hơn 0.',
            'hsd.after_or_equal' => 'Hạn sử dụng phải lớn hơn hoặc bằng ngày sản xuất.',
            'ie_number2.required' => 'Số lượng nhập sản phẩm 2 là bắt buộc.',
            'ie_number2.numeric' => 'Số lượng nhập sản phẩm 2 phải là chữ số.',
            'ie_number2.min' => 'Số lượng nhập sản phẩm 2 phải lớn hơn 0.',
            'ie_money2.required' => 'Giá nhập sản phẩm 2 là bắt buộc.',
            'ie_money2.numeric' => 'Giá nhập sản phẩm 2 phải là chữ số.',
            'ie_money2.min' => 'Giá nhập sản phẩm 2 phải lớn hơn 0.',
            'hsd2.after_or_equal' => 'Hạn sử dụng phải lớn hơn hoặc bằng ngày sản xuất.',
            'ie_number3.required' => 'Số lượng nhập sản phẩm 3 là bắt buộc.',
            'ie_number3.numeric' => 'Số lượng nhập sản phẩm 3 phải là chữ số.',
            'ie_number3.min' => 'Số lượng nhập sản phẩm 3 phải lớn hơn 0.',
            'ie_money3.required' => 'Giá nhập sản phẩm 3 là bắt buộc.',
            'ie_money3.numeric' => 'Giá nhập sản phẩm 3 phải là chữ số.',
            'ie_money3.min' => 'Giá nhập sản phẩm 3 phải lớn hơn 0.',
            'hsd3.after_or_equal' => 'Hạn sử dụng phải lớn hơn hoặc bằng ngày sản xuất.'
        ];
    }
}
