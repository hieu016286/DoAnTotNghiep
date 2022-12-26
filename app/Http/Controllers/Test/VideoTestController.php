<?php

namespace App\Http\Controllers\Test;

use App\Http\Controllers\Controller;
use App\Models\Espisode;
use App\Models\Video;
use Illuminate\Http\Request;

class VideoTestController extends Controller
{
	public function index()
	{
		$video = \DB::table('videos')->get();
		return view('test.video.index', compact('video'));
	}

	public function create()
	{
		return view('test.video.create');
	}

	public function store(Request $request)
	{
		$link = preg_replace("/\r\n/",'|',$request->link);
		$link = explode('|', $link);
		$dataEpisode = $this->detectLink($link);

		$id = \DB::table('videos')
			->insertGetId([
				'total' => count($dataEpisode),
				'name'  => $request->name
			]);

		if ($id)
		{
			foreach ($dataEpisode as $item)
			{
				\DB::table('episode')->insert([
					'video_id' => $id,
					'link' => $item['url'],
					'server' => $item['domain']
				]);
			}
		}

		return redirect()->back();
	}

	protected function detectLink($arrLink = [])
	{
		$data = [];
		if (!empty($arrLink))
		{
			foreach ($arrLink as $url)
			{
				$domain = parse_url('http://' . str_replace(array('https://', 'http://'), '', $url), PHP_URL_HOST);
				$data[] = [
					'url' => $url,
					'domain' => $domain
				];
			}
		}

		return $data;
	}

	public function delete($id)
	{
		\DB::table('videos')->where('id', $id)->delete();
		\DB::table('episode')->where('video_id', $id)->delete();

		return redirect()->back();
	}

	public function addEpisode($id)
	{
		$video = Video::find($id);
		return view('test.video.create', compact('video'));
	}

	public function viewVideo(Request $request, $slug)
	{
		$arraySlug = explode('-', $slug);
		$id        = array_pop($arraySlug);

		if ($id)
		{
			$video = Video::findOrFail($id);
			$episode = Espisode::where('video_id', $id)->get();

			$episodeFirst = $episode[0] ?? null;
			if ($request->tap)
			{
				$episodeFirst =  Espisode::findOrFail($request->tap);
			}
			return view('test.video.view', compact('video','episode','episodeFirst'));
		}
	}

	public function storeEpisode(Request $request, $id)
	{
		$link = preg_replace("/\r\n/",'|',$request->link);
		$link = explode('|', $link);
		$dataEpisode = $this->detectLink($link);
		$count = 0;
		foreach ($dataEpisode as $item)
		{
			\DB::table('episode')->insert([
				'video_id' => $id,
				'link' => $item['url'],
				'server' => $item['domain']
			]);
			$count++;
		}

		\DB::table('videos')->where('id',$id)->increment('total', $count);
		return redirect()->back();

	}

	public function edit($id)
	{
		$video = \DB::table('videos')->where('id', $id)->first();
		return view('test.video.update', compact('video'));
	}

	public function update(Request $request, $id)
	{
		\DB::table('videos')
			->where('id', $id)
			->update([
				'name' => $request->name
			]);

		return redirect()->back();
	}
}
