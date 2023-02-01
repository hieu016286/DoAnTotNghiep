<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Auth','prefix' => 'account'], function(){

    Route::get('auth/google', 'LoginController@redirectToGoogle');
    Route::get('auth/google/callback', 'LoginController@handleGoogleCallback');

    Route::get('register','RegisterController@getFormRegister')->name('get.register'); // đăng ký
    Route::post('register','RegisterController@postRegister'); // xử lý đăng ký

    Route::get('login','LoginController@getFormLogin')->name('get.login'); // đăng nhập
    Route::post('login','LoginController@postLogin'); // xử lý đăng nhập

    Route::get('logout','LoginController@getLogout')->name('get.logout'); // đăng xuất

    Route::get('reset-password','ResetPasswordController@getEmailReset')->name('get.email_reset_password'); // gủi gmail  lấy mk
    Route::post('reset-password','ResetPasswordController@checkEmailResetPassword'); //xư lý

    Route::get('new-password','ResetPasswordController@newPassword')->name('get.new_password'); // mk mới
    Route::post('new-password','ResetPasswordController@savePassword'); 
 
    Route::get('/{social}/redirect', 'SocialAuthController@redirect')->name('get.login.social'); // callback 
    Route::get('/{social}/callback', 'SocialAuthController@callback')->name('get.login.social_callback'); //
});

// Login admin
Route::group(['prefix' => 'admin-auth','namespace' => 'Admin\Auth'], function() {
    Route::get('login','AdminLoginController@getLoginAdmin')->name('get.login.admin');
    Route::post('login','AdminLoginController@postLoginAdmin');

    Route::get('logout','AdminLoginController@getLogoutAdmin')->name('get.logout.admin');
});



Route::group(['namespace' => 'Frontend'], function() {
    
    Route::get('','HomeController@index')->name('get.home'); // trang chủ
	Route::get('/home', 'HomeController@index'); // trang chủ

    Route::get('ajax-load-product-recently','HomeController@getLoadProductRecently')->name('ajax_get.product_recently');
    Route::get('ajax-load-product-by-category','HomeController@getLoadProductByCategory')->name('ajax_get.product_by_category');

//    Route::get('ajax-load-slide','HomeController@loadSlideHome')->name('ajax_get.slide');
    /**
     * Route danh sách sản phẩm
     **/
    Route::get('san-pham','ProductController@index')->name('get.product.list');
    Route::get('dan-muc/{slug}','CategoryController@index')->name('get.category.list'); // list sp theo danh mục

    Route::get('san-pham/{slug}','ProductDetailController@getProductDetail')->name('get.product.detail'); // chi tiet sp 
    Route::get('san-pham/{slug}/danh-gia','ProductDetailController@getListRatingProduct')->name('get.product.rating_list'); // list dánh giá của sp đó

    Route::get('bai-viet','BlogController@index')->name('get.blog.home'); // bai viet
    Route::get('menu/{slug}','BlogMenuController@getArticleByMenu')->name('get.article.by_menu'); // bai viết theo menu
    Route::get('bai-viet/{slug}','ArticleDetailController@index')->name('get.blog.detail'); // chi tiet bai viet
    // GIỏ hàng
    Route::get('don-hang','ShoppingCartController@index')->name('get.shopping.list'); // gio hang
// Checkout
      Route::get('payment/{id}','ShoppingCartController@payment')->name('payment');
      Route::get('result_payment','ShoppingCartController@result_payment')->name('result_payment');
    Route::prefix('shopping')->group(function () {
        Route::get('add/{id}','ShoppingCartController@add')->name('get.shopping.add'); // thêm giỏ hàng
        Route::get('delete/{id}','ShoppingCartController@delete')->name('get.shopping.delete'); // xoá sp trong gi hàng
        Route::get('update/{id}','ShoppingCartController@update')->name('ajax_get.shopping.update'); // cập nhật
        Route::get('theo-doi-don-hang','TrackOrderController@index')->name('get.track.transaction'); // 
        Route::post('pay','ShoppingCartController@postPay')->name('post.shopping.pay'); // xử lý giỏ hàng lưu thông tin
    });

    //Comment
    Route::group(['prefix' => 'comment', 'middleware' => 'check_user_login'], function(){ 
        Route::post('ajax-comment','CommentsController@store')->name('ajax_post.comment'); // lưu commend
    });

    Route::get('lien-he','ContactController@index');
    Route::post('lien-he','ContactController@store')->name('store');

    Route::get('cache/clear','CacheController@index');

    Route::get('san-pham-ban-da-xem','PageStaticController@getProductView')->name('get.static.product_view');
    Route::get('ajax/san-pham-ban-da-xem','PageStaticController@getListProductView')->name('ajax_get.product_view');
    
    Route::get('huong-dan-mua-hang','PageStaticController@getShoppingGuide')->name('get.static.shopping_guide');
    Route::get('chinh-sach-doi-tra','PageStaticController@getReturnPolicy')->name('get.static.return_policy');
    Route::get('cham-soc-khach-hang','PageStaticController@getCustomerCare')->name('get.static.customer_care');

});

Route::group(['prefix' => 'test','namespace' => 'Test'], function(){
	Route::get('hoa-don-ban','TestController@index');
    Route::get('', function(){
        return view('test.index');
    });
    Route::group(['prefix' => 'video'], function(){
        Route::get('','VideoTestController@index')->name('test.video.index');
        Route::get('create','VideoTestController@create')->name('test.video.create');
        Route::post('create','VideoTestController@store');

		Route::get('update/{id}','VideoTestController@edit')->name('test.video.update');
		Route::post('update/{id}','VideoTestController@update');

		Route::get('delete/{id}','VideoTestController@delete')->name('test.video.delete');
		Route::get('add/{id}','VideoTestController@addEpisode')->name('test.video.add.episode');
		Route::post('add/{id}','VideoTestController@storeEpisode');
		Route::get('view/{slug}','VideoTestController@viewVideo')->name('test.video.view');
    });

	Route::group(['prefix' => 'embed'], function(){
		Route::get('','EmbedTestController@index')->name('test.embed.index');
		Route::get('create','EmbedTestController@create')->name('test.embed.create');
		Route::get('delete/{id}','EmbedTestController@delete')->name('test.embed.delete');
	});
});

