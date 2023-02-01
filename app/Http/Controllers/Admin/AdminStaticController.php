<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestPageStatic;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\PageStatic;

class AdminStaticController extends Controller
{
    public function index()
    {
		if (!check_admin()) return redirect()->route('get.admin.index');
        $statics = PageStatic::get();

        return view('admin.static.index', compact('statics'));
    }

    public function create()
    {
        $type = (new PageStatic())->getType();

        return view('admin.static.create',compact('type'));
    }

    public function store(AdminRequestPageStatic $request)
    {
        $data = $request->except('_token');
        $data['created_at'] = Carbon::now();
       
        PageStatic::insertGetId($data);
        return redirect()->back()->with('success', 'Thêm thành công dữ liệu');
    }

    public function edit($id)
    {
        $static = PageStatic::find($id);
        $type = (new PageStatic())->getType();

        return view('admin.static.update', compact('static','type'));
    }

    public function update(AdminRequestPageStatic $request, $id)
    {
        $static = PageStatic::find($id);
        $data = $request->except('_token');
        $data['created_at'] = Carbon::now();        
        $static->update($data);

        return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
    }

    public function delete($id)
    {
        $static = PageStatic::find($id);
        if ($static) $static->delete();

        return redirect()->back();
    }
}
