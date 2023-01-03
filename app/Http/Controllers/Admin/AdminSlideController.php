<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestSlide;
use Carbon\Carbon;
use App\Models\Slide;

class AdminSlideController extends Controller
{
    public function index()
    {
		if (!check_admin()) return redirect()->route('get.admin.index');
        $slides = Slide::paginate(20);

        return view('admin.slide.index', compact('slides'));
    }

    public function create()
    {
        return view('admin.slide.create');
    }

    public function store(AdminRequestSlide $request)
    {
        $data = $request->except('_token','sd_avatar');
        $data['created_at'] = Carbon::now();

        if ($request->sd_avatar) {
            $image = upload_image('sd_avatar');
            if ($image['code'] == 1) 
                $data['sd_image'] = $image['name'];
        }
        Slide::insertGetId($data);

        return redirect()->back()->with('success', 'Thêm thành công dữ liệu');
    }

    public function edit($id) {
        $slide = Slide::find($id);

        return view('admin.slide.update',compact('slide'));
    }

    public function update(AdminRequestSlide $request, $id)
    {
        $slide = Slide::find($id);
        $data = $request->except('_token','sd_avatar');
        $data['created_at'] = Carbon::now();

        if ($request->sd_avatar) {
            if(check_image($slide->sd_image))
                remove_image($slide->sd_image);
            $image = upload_image('sd_avatar');
            if ($image['code'] == 1) 
                $data['sd_image'] = $image['name'];
        }
        $slide->update($data);

        return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
    }


    public function active($id)
    {
        $slide = Slide::find($id);
        $slide->sd_active = !$slide->sd_active;
        $slide->save();

        return redirect()->back();
    }

    public function delete($id)
    {
        $slide = Slide::find($id);
        if ($slide) {
            if(check_image($slide->sd_image))
                remove_image($slide->sd_image);
            $slide->delete();
        };

        return redirect()->back();
    }


}
