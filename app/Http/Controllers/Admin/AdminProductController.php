<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\InvoiceEntered;
use Illuminate\Http\Request;
use App\Http\Requests\AdminRequestProduct;
use App\Models\Category;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Str;
use Carbon\Carbon;
use App\Models\Product;
use App\Models\Attribute;
use App\Models\Keyword;

class AdminProductController extends Controller
{
	public function index(Request $request)
	{
		Cache::forget('HOME.PRODUCT_NEW');
		Cache::forget('HOME.PRODUCT_HOT');
		$sumNumber = Product::sum('pro_number');
		$products  = Product::with('category:id,c_name');
		if ($id = $request->id) $products->where('id', $id);
		if ($name = $request->name) $products->where('pro_name', 'like', '%' . $name . '%');
		if ($category = $request->category) $products->where('pro_category_id', $category);

		$products = $products->orderByDesc('id')->paginate(10);
		$categories = $this->getCategoriesSort();
		$viewData = [
			'products' => $products,
			'categories' => $categories,
			'sumNumber' => $sumNumber,
			'query' => $request->query()
		];

		return view('admin.product.index', $viewData);
	}

	public function create()
	{
		$categories = $this->getCategoriesSort();
		$attributeOld = [];
		$keywordOld = [];
		$attributes = $this->syncAttributeGroup();
		$keywords = Keyword::all();

		return view('admin.product.create', compact('categories', 'attributeOld', 'attributes', 'keywords', 'keywordOld'));
	}

	public function store(AdminRequestProduct $request)
	{
		$data = $request->except('_token', 'pro_avatar', 'attribute', 'keywords', 'file', 'pro_sale');
		$data['preview'] = $request->preview;
		$data['pro_slug'] = Str::slug($request->pro_name);
		$data['pro_number_import'] = 0;
		$data['pro_sale'] = $request->pro_sale ?? 0;
		$data['created_at'] = Carbon::now();
		if ($request->pro_sale) {
			$data['pro_sale'] = $request->pro_sale;
		}

		if ($request->pro_avatar) {
			$image = upload_image('pro_avatar');
			if ($image['code'] == 1)
				$data['pro_avatar'] = $image['name'];
		}

		$id = Product::insertGetId($data);

		if ($id) {
			$this->syncAttribute($request->attribute, $id);
			$this->syncKeyword($request->keywords, $id);
			if ($request->file) {
				$this->syncAlbumImageAndProduct($request->file, $id);
			}
		}

		return redirect()->back()->with('success', 'Thêm thành công dữ liệu');
	}

	public function edit($id)
	{
		$categories = $this->getCategoriesSort();
		$product = Product::findOrFail($id);
		$attributes = $this->syncAttributeGroup();
		$keywords = Keyword::all();

		$attributeOld = DB::table('products_attributes')
			->where('pa_product_id', $id)
			->pluck('pa_attribute_id')
			->toArray();

		$keywordOld = DB::table('products_keywords')
			->where('pk_product_id', $id)
			->pluck('pk_keyword_id')
			->toArray();

		if (!$attributeOld) $attributeOld = [];
		if (!$keywordOld) $keywordOld = [];

		$images = DB::table('product_images')
			->where("pi_product_id", $id)
			->get();

		$viewData = [
			'categories' => $categories,
			'product' => $product,
			'attributes' => $attributes,
			'attributeOld' => $attributeOld,
			'keywords' => $keywords,
			'keywordOld' => $keywordOld,
			'images' => $images ?? []
		];

		return view('admin.product.update', $viewData);
	}

	public function synImportGoods($importGoodsID, $productId)
	{

	}

	public function update(AdminRequestProduct $request, $id)
	{
		$product = Product::find($id);
		$data = $request->except('_token', 'pro_avatar', 'attribute', 'keywords', 'file', 'pro_sale','add_number','preview');
		$data['preview'] = $request->preview;
		$data['pro_slug'] = Str::slug($request->pro_name);
		$data['updated_at'] = Carbon::now();
		if ($request->pro_sale) {
			$data['pro_sale'] = $request->pro_sale;
		}
		if ($request->pro_avatar) {
            if(check_image($product->pro_avatar))
                remove_image($product->pro_avatar);
			$image = upload_image('pro_avatar');
			if ($image['code'] == 1)
				$data['pro_avatar'] = $image['name'];
		}

		$old_number = $product->pro_number_import;

		$update = $product->update($data);

		if ($update) {
			$invoiceEntered = InvoiceEntered::where('ie_product_id', $product->id)->first();
			if ($old_number != $product->pro_number_import) {
				//  Đồng bộ lại đơn nhập
				if ($invoiceEntered) {
					$invoiceEntered->ie_number = ($invoiceEntered->ie_number - $old_number + $product->pro_number_import);
					$invoiceEntered->save();
				}
			}

			//  Xử lý thêm mới số lượng
			if ($addNumber = $request->add_number) {
				$product->pro_number_import += $addNumber;
				$product->save();
				if ($invoiceEntered) {
					$invoiceEntered->ie_number += $addNumber;
					$invoiceEntered->save();
				}
			}

			$this->syncAttribute($request->attribute, $id);
			$this->syncKeyword($request->keywords, $id);

			if ($request->file) {
				$this->syncAlbumImageAndProduct($request->file, $id);
			}
		}

		return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
	}

	public function syncAlbumImageAndProduct($files, $productID)
	{
		foreach ($files as $fileImage) {
			$ext = $fileImage->getClientOriginalExtension();
			$extend = [
				'png', 'jpg', 'jpeg', 'PNG', 'JPG'
			];

			if (!in_array($ext, $extend)) return false;

			$filename = date('Y-m-d__') . Str::slug($fileImage->getClientOriginalName()) . '.' . $ext;
			$path = public_path() . '/uploads/' . date('Y/m/d/');
			if (!File::exists($path)) {
				mkdir($path, 0777, true);
			}

			$fileImage->move($path, $filename);
			DB::table('product_images')->insert([
					'pi_name' => $fileImage->getClientOriginalName(),
					'pi_slug' => $filename,
					'pi_product_id' => $productID,
					'created_at' => Carbon::now()
				]);
		}
	}

	public function active($id)
	{
		$product = Product::find($id);
		$product->pro_active = !$product->pro_active;
		$product->save();

		return redirect()->back();
	}

	public function hot($id)
	{
		$product          = Product::find($id);
		$product->pro_hot = !$product->pro_hot;
		$product->save();

		return redirect()->back();
	}

	private function syncKeyword($keywords, $idProduct)
	{
		if (!empty($keywords)) {
			$datas = [];
			foreach ($keywords as $keyword) {
				$datas[] = [
					'pk_product_id' => $idProduct,
					'pk_keyword_id' => $keyword
				];
			}

			DB::table('products_keywords')->where('pk_product_id', $idProduct)->delete();
			DB::table('products_keywords')->insert($datas);
		}
	}

	public function delete($id)
	{
		$product = Product::find($id);
		if ($product) {
            if(check_image($product->pro_avatar))
                remove_image($product->pro_avatar);
            $product->delete();
        }

		return redirect()->back();
	}

	public function deleteImage($imageID)
	{
		DB::table('product_images')->where('id', $imageID)->delete();
		return redirect()->back();
	}

	protected function syncAttribute($attributes, $idProduct)
	{
		if (!empty($attributes)) {
			$datas = [];
			foreach ($attributes as $value) {
				$datas[] = [
					'pa_product_id'   => $idProduct,
					'pa_attribute_id' => $value
				];
			}
			if (!empty($datas)) {
				DB::table('products_attributes')->where('pa_product_id', $idProduct)->delete();
				DB::table('products_attributes')->insert($datas);
			}
		}
	}


	public function syncAttributeGroup()
	{
		$attributes     = Attribute::get();
		$groupAttribute = [];

		foreach ($attributes as $key => $attribute) {
			$key                    = $attribute->gettype($attribute->atb_type)['name'];
			$groupAttribute[$key][] = $attribute->toArray();
		}

		return $groupAttribute;
	}

    protected function getCategoriesSort()
    {
        $categories = Category::all();
        $listCategoriesSort = [];
        Category::recursive($categories, $parent = 0, $level = 1, $listCategoriesSort);
        return $listCategoriesSort;
    }
}
