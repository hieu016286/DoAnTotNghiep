<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Http\Requests\AdminRequestAccount;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;

class AdminAccountController extends Controller
{
    public function index()
    {
		if (!check_admin()) return redirect()->route('get.admin.index');
        $admins = Admin::get();
        $viewData = [
            'admins' => $admins
        ];
        return view('admin.admin.index', $viewData);
    }

    public function create()
    {
        return view('admin.admin.create');
    }

    public function store(AdminRequestAccount $request)
    {
        $data = $request->except("_token");
        $data['password']   =  Hash::make($data['password']);
        $data['created_at'] = Carbon::now();
        $admin = Admin::insert($data);

        return redirect()->back()->with('success', 'Thêm hành công dữ liệu');
    }

    public function edit($id)
    {
        $admin = Admin::find($id);
        return view('admin.admin.update', compact('admin'));   
    }

    public function update(AdminRequestAccount $request, $id)
    {
        $data = $request->except("_token","password");
        if ($request->password)
        {
            $data['password']   =  Hash::make($request->password);
        }           
        Admin::find($id)->update($data);
        return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
    }

    public function delete($id)
    {
        $admin = Admin::find($id);
        if (get_data_user('admins','level') != 1)
		{
			return redirect()->back();
		}

        $admin->delete();
        return redirect()->back();
    }
}
