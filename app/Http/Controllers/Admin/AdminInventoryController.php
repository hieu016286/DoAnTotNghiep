<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\InvoiceEntered;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\Cache;

class AdminInventoryController extends Controller
{
	/**
	 * Nhập kho
	 */
    public function getWarehousing(Request $request)
	{
		$invoiceEntered = InvoiceEntered::with('suppliere', 'category');
        if ($request->time) {
            $time = $this->getStartEndTime($request->time, []);
            $invoiceEntered->whereBetween('created_at', $time);
        }


        $invoiceEntered = $invoiceEntered->orderByDesc('id')
			->paginate(20);

		$viewData = [
			'invoiceEntered' => $invoiceEntered,
            'query' => $request->query()
		];

		return view('admin.inventory.import', $viewData);
	}

	/**
	 * Xuất kho
	 */
	public function getOutOfStock(Request $request)
	{
		$inventoryExport = Order::with('product');
        if ($request->time) {
            $time = $this->getStartEndTime($request->time, []);
            $inventoryExport->whereBetween('created_at', $time);
        }

//        foreach($inventoryExport->orderByDesc('id')->get() as $inven) {
//            $product = Product::where('id', $inven->product->id)->first();
//            if($product) {
//                $orderTotalQty = Order::where('od_product_id', $product->id)->get()->sum('od_qty');
//                dd($product->invoice_entered()->orderBy('created_at', 'ASC')->get());
//            }
//        }

        $inventoryExport = $inventoryExport->orderByDesc('id')->paginate(20);

		$viewData = [
			'inventoryExport' => $inventoryExport,
            'query' => $request->query()
		];

		return view('admin.inventory.export', $viewData);
    }
    
    public function gettonkho(Request $request)
	{
		Cache::forget('HOME.PRODUCT_NEW');
		Cache::forget('HOME.PRODUCT_HOT');
		$sumNumber = Product::sum('pro_number');
		$products  = Product::with('category:id,c_name');
		if ($id = $request->id) $products->where('id', $id);
		if ($name = $request->name) $products->where('pro_name', 'like', '%' . $name . '%');
		if ($category = $request->category) $products->where('pro_category_id', $category);

		$products = $products->orderByDesc('id')->paginate(10);
        $categories = Category::all();
        $listCategoriesSort = [];
        Category::recursive($categories, $parent = 0, $level = 1, $listCategoriesSort);
		$viewData = [
			'products'   => $products,
			'categories' => $listCategoriesSort,
			'sumNumber'  => $sumNumber,
			'query'      => $request->query()
		];

		return view('admin.inventory.tonkho', $viewData);
	}


    public function getStartEndTime($date_range, $config = [])
    {
        $dates = explode(' - ', $date_range);
        $start_date = date('Y-m-d 00:00:00', strtotime($dates[0]));
        $end_date = date('Y-m-d 23:59:59', strtotime($dates[1]));

        return [
            'start' => $start_date,
            'end' => $end_date
        ];
    }
}
