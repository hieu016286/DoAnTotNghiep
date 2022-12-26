<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class InvoiceEntered extends Model
{
    protected $table = 'invoice_entered';
    protected $guarded = [''];

    public function suppliere()
	{
		return $this->belongsTo(Supplier::class,'ie_suppliere');
	}

	// public function category()
	// {
	// 	return $this->belongsTo(Category::class,'ie_category');
	// }

	public function product()
	{
		return $this->belongsTo(Product::class,'ie_product_id');
	}
}
