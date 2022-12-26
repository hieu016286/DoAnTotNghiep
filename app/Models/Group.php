<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $fillable = [
        'id',
        'name',
    ];

    public function group()
    {
        return $this->belongsTo(Group::class)->withDefault();
    }
}
