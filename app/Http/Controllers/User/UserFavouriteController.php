<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class UserFavouriteController extends Controller
{
    public function __construct()
    {
        $this->middleware('verified');
    }
    public function index()
    {
        $userID = Auth::id();
        $products = Product::with('category')
            ->whereHas('users', function($query) use ($userID){
            $query->where('uf_user_id', $userID);
        })->select('id','pro_name','pro_slug','pro_sale','pro_avatar','pro_price','pro_category_id')
            ->paginate(10);


        return view('user.favourite', compact('products'));
    }

    /**
     * Thêm sản phẩm yêu thích
     *
     */
    public function addFavourite(Request $request, $id)
    {
        if ($request->ajax()) {

            //1.  Kiểm tra tồn tại sản phẩm
            $product = Product::find($id);
            if (!$product) return response(['messages' => 'Không tồn tại sản phẩm']);

            $messages = 'Thêm Yêu Thích Thành Công';

            try {
                DB::table('user_favourite')
                ->insert([
                    'uf_product_id' => $id,
                    'uf_user_id' => Auth::id()
                ]);
            } catch (\Exception $e) {
                $messages = 'Sản Phẩm Này Đã Được Yêu Thích';
            }

            return response(['messages' => $messages]);
        }
    }

    public function delete($id) {
        \DB::table('user_favourite')->where([
            'uf_product_id' => $id,
            'uf_user_id'    => \Auth::id()
        ])->delete();
        return redirect()->back();
    }
}
