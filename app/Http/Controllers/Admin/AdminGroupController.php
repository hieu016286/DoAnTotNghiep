<?php

namespace App\Http\Controllers\Admin;
use App\Http\Requests\AdminRequestGroup;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Group;

class AdminGroupController extends Controller
{
    public function index()
    {
        $categories = Group::paginate(10);

        $viewData = [
            'categories' => $categories
        ];

        return view('admin.group.group', $viewData);
    }

    public function create()
    {
        // $categories = $this->getCategoriesSort();
        $categories = Group::all();
        return view('admin.group.create',compact('categories'));
        // return view('admin.group.create');
    }

    public function store(AdminRequestGroup $request)
    {
        $data = new Group();
        $data->name = $request->input('name');
        $data->save();
        return redirect()->back()->with('success', 'Thêm hành công dữ liệu');
    }

    public function edit($id)
    {
        $category = Group::find($id);
        // $categories = $this->getCategoriesSort();
        return view('admin.group.update', compact('category'));
    }

    public function update(AdminRequestGroup $request, $id)
    {
        $group = Group::find($id);
        $group->name = $request->name;
        $group->save();
        return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
    }
    public function delete($id)
    {
        $group = Group::find($id);
        if ($group) $group->delete();

        return redirect()->back();
    }

    // protected function getCategoriesSort()
    // {
    //     $categories = Category::where('c_status', Category::STATUS_ACTIVE)
    //         ->select('id', 'c_parent_id', 'c_name')->get();

    //     $listCategoriesSort = [];
    //     Category::recursive($categories, $parent = 0, $level = 1, $listCategoriesSort);
    //     return $listCategoriesSort;
    // }
}
