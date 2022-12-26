<?php

namespace App\Models;

use App\User;
use Illuminate\Database\Eloquent\Model;
use App\Models\Product;

class Comments extends Model
{
    protected $guarded = [''];

    public function user()
    {
        return $this->belongsTo(User::class,'cmt_user_id','id');
    }

    public function reply()
    {
        return $this->hasMany(Comments::class,'cmt_parent_id','id');
    }

    public function product()
    {
        return $this->belongsTo(Product::class,'cmt_product_id');
    }
}
