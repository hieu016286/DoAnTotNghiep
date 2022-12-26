<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Espisode extends Model
{
    protected $table = 'episode';

	public function video()
	{
		return $this->belongsTo(Video::class,'video_id');
	}
}
