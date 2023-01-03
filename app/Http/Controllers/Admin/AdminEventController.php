<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Models\Event;
use Illuminate\Support\Facades\Cache;

class AdminEventController extends Controller
{
    public function index()
    {
		Cache::forget('HOME.EVENT_1');
		Cache::forget('HOME.EVENT_2');
		Cache::forget('HOME.EVENT_3');

		if (!check_admin()) return redirect()->route('get.admin.index');
        $events = Event::get();

        return view('admin.event.index', compact('events'));
    }

    public function create()
    {
        return view('admin.event.create');
    }

    public function store(Request $request)
    {
        $data = $request->except('_token','e_banner','e_position_1','e_position_2','e_position_3','e_position_4');
        $data['created_at'] = Carbon::now();

        if ($request->e_position_1) {
            $data['e_position_1'] = 1;
        }

        if ($request->e_position_2) {
            $data['e_position_2'] = 1;
        }

        if ($request->e_position_3) {
            $data['e_position_3'] = 1;
        }

        if ($request->e_position_4) {
            $data['e_position_4'] = 1;
        }
        if ($request->e_position_5) {
            $data['e_position_5'] = 1;
        }
        if ($request->e_position_6) {
            $data['e_position_6'] = 1;
        }

        if ($request->e_banner) {
            $image = upload_image('e_banner');
            if ($image['code'] == 1) 
                $data['e_banner'] = $image['name'];
        } 

        Event::insertGetId($data);
        return redirect()->back()->with('success', 'Thêm thành công dữ liệu');
    }

    public function edit($id)
    {
        $event = Event::find($id);
        return view('admin.event.update', compact('event'));
    }

    public function update(Request $request, $id)
    {
        $event = Event::find($id);
        $data = $request->except('_token','e_banner','e_position_1','e_position_2','e_position_3','e_position_4');
        $data['created_at'] = Carbon::now();


        if ($request->e_position_1) {
            $data['e_position_1'] = 1;
        } else {
            $data['e_position_1'] = 0;
        }

        if ($request->e_position_2) {
            $data['e_position_2'] = 1;
        } else {
            $data['e_position_2'] = 0;
        }

        if ($request->e_position_3) {
            $data['e_position_3'] = 1;
        } else {
            $data['e_position_3'] = 0;
        }

        if ($request->e_position_4) {
            $data['e_position_4'] = 1;
        } else {
            $data['e_position_4'] = 0;
        }

        if ($request->e_position_5) {
            $data['e_position_5'] = 1;
        } else {
            $data['e_position_5'] = 0;
        }

        if ($request->e_position_6) {
            $data['e_position_6'] = 1;
        } else {
            $data['e_position_6'] = 0;
        }

        if ($request->e_banner) {
            if(check_image($event->e_banner))
                remove_image($event->e_banner);
            $image = upload_image('e_banner');
            if ($image['code'] == 1) 
                $data['e_banner'] = $image['name'];
        } 

        $event->update($data);
        return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
    }

    public function delete($id)
    {
        $event = Event::find($id);
        if ($event) {
            if(check_image($event->e_banner))
                remove_image($event->e_banner);
            $event->delete();
        }

        return redirect()->back();
    }
}
