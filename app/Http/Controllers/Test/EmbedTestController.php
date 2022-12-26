<?php

namespace App\Http\Controllers\Test;

use App\Http\Controllers\Controller;
use App\Models\Espisode;
use Illuminate\Http\Request;

class EmbedTestController extends Controller
{
    public function index()
    {
    	$episode = Espisode::with('video')->get();
        return view('test.embed.index',compact('episode'));
    }

    public function create()
    {
        return view('test.embed.create');       
    }

    public function delete($id)
	{
		$episode = Espisode::find($id);
		if ($episode)
		{
			\DB::table('videos')->where('id', $episode->video_id)
				->decrement('total');
			$episode->delete();
		}

		return redirect()->back();
	}
}
