<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Import_histories extends Model
{
    protected $fillable = [
        'id',
        // 'id_import'
        'id_invoice'
        
    ];

    // public function group()
    // {
    //     return $this->belongsTo(Group::class)->withDefault();
    // }
}
