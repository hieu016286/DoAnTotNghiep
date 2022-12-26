<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;

class CategoryController extends FrontendController
{
    public function index(Request $request, $slug)
    {
        $arraySlug = explode('-', $slug);
        $id = array_pop($arraySlug);
        if ($id) {
            
            $category = Category::find($id);
            $categoryId = Category::where('c_parent_id', $id)->get();
            $id = intval($id);
            $listIdCate = [$id];
            foreach($categoryId as $item) {
                array_push($listIdCate, $item->id);
            }

            $products = Product::whereIn('pro_category_id', $listIdCate)->where('pro_active', 1);


            $paramAtbSearch =  $request->except('price','page','k','country','rv','sort');
            $paramAtbSearch =  array_values($paramAtbSearch);

            if (!empty($paramAtbSearch)) {
                $products->whereHas('attributes', function($query) use($paramAtbSearch){
                    $query->whereIn('pa_attribute_id', $paramAtbSearch);
                });
            }

            if ($request->price) {
                $price =  $request->price;
                if ($price == 6) {
                    $products->where('pro_price','>', 100000);
                }else{
                    $products->where('pro_price','<=', 20000 * $price);
                }
            }

            if ($request->k) $products->where('pro_name','like','%'.$request->k.'%');
            if ($request->rv) $products->where('pro_review_star',$request->rv);
            if ($request->sort) $products->orderBy('id',$request->sort);

            $products = $products->select('id','pro_name','pro_slug','pro_sale','pro_number','pro_avatar','pro_price','pro_review_total','pro_review_star')
                ->paginate(12);

            $modelProduct = new Product();

            // Lấy thuộc tính
            $attributes =  $this->syncAttributeGroup();

            $viewData = [
                'attributes'    => $attributes,
                'products'      => $products,
                'title_page'    => $category->c_name,
                'query'         => $request->query(),
                'country'       => $modelProduct->country,
                'link_search'   => request()->fullUrlWithQuery(['k' => \Request::get('k')])
            ];

            return view('frontend.pages.product.index', $viewData);
        }
    }
}
