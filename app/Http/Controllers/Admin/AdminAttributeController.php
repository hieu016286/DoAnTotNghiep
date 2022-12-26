<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\AdminRequestAttribute;
use App\Models\Category;
use App\Models\Attribute;
use Illuminate\Support\Str;
use Carbon\Carbon;

class AdminAttributeController extends Controller
{
    public function index()
    {
        $attibutes = Attribute::with('category:id,c_name')->orderByDesc('id')
            ->get();

        $viewData = [
            'attibutes' => $attibutes
        ];

        return view('admin.attribute.index', $viewData);
    }

    public function create()
    {
        $categories = Category::select('id','c_name')->get();
        $attribute_type = Attribute::getListType();

        return view('admin.attribute.create',compact('categories','attribute_type'));
    }

    public function store(AdminRequestAttribute $request)
    {
        $data = $request->except('_token');
        $data['atb_slug']     = Str::slug($request->atb_name);
        $data['created_at'] = Carbon::now();

        $id = Attribute::insertGetId($data);
        return redirect()->back()->with('success', 'Thêm hành công dữ liệu');
    }

    public function edit($id)
    {
        $attribute = Attribute::find($id);
        $categories = Category::select('id','c_name')->get();
		$attribute_type = Attribute::getListType();
        return view('admin.attribute.update', compact('attribute','categories','attribute_type'));
    }

    public function update(AdminRequestAttribute $request, $id)
    {
        $attribute          = Attribute::find($id);
        $data               = $request->except('_token');
        $data['atb_slug']   = Str::slug($request->atb_name);
        $data['updated_at'] = Carbon::now(); 

        $attribute->update($data);
        return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
    }

    public function delete($id)
    {
        $attribute          = Attribute::find($id);
        if ($attribute) $attribute->delete();

        return redirect()->back();
    }
}
