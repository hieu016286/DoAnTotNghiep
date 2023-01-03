<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Supplier;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AdminSupplierController extends Controller
{
	public function index()
	{
		$supplieres = Supplier::get();
		$viewData = ['supplieres' => $supplieres];

		return view('admin.supplier.index', $viewData);
	}

	public function create()
	{
		return view('admin.supplier.create');
	}

	public function store(Request $request)
	{
		$data = $request->except("_token");
		$data['created_at'] = Carbon::now();
		Supplier::insert($data);

		return redirect()->back()->with('success', 'Thêm thành công dữ liệu');
	}

	public function edit($id)
	{
		$supplier = Supplier::find($id);
		return view('admin.supplier.update', compact('supplier'));
	}

	public function update(Request $request, $id)
	{
		$data = $request->except("_token");
		Supplier::find($id)->update($data);

		return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
	}

	public function delete($id)
	{
		Supplier::find($id)->delete();
		return redirect()->back();
	}
}
