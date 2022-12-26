<?php

namespace App\Http\Controllers\Test;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TestController extends Controller
{
    public function index()
	{
		return $this->hoaDonBan();
	}

	protected function hoaDonBan()
	{
		return view('test.hoa-don-ban');
	}
}
