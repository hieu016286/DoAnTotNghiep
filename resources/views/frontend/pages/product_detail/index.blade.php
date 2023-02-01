@extends('layouts.app_master_frontend')
@section('css')
    <style>
        <?php $style = file_get_contents('css/product_detail_insights.min.css');echo $style;?>
        .number-empty, .number-empty:hover {
            cursor: not-allowed;
        }
    </style>
@stop
@section('content')
    <div class="container">
        <div class="breadcrumb">
            <ul>
                <li>
                    <a itemprop="url" href="/" title="Home"><span itemprop="title">Trang chủ</span></a>
                </li>
                <li>
                    <a itemprop="url" href="{{ route('get.product.list') }}" title="Sản phẩm"><span
                            itemprop="title">Sản phẩm</span></a>
                </li>

                <li>
                    <a itemprop="url" href="" title="Đồng hồ Diamond D"><span itemprop="title">{{ $product->pro_name }}</span></a>
                </li>

            </ul>
        </div>
        <div class="card">
            <div class="card-body info-detail">
                <div class="left">
{{--                    @include('frontend.pages.product_detail.include._inc_album')--}}
                    <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" title=""
                       class="">
                        <img alt="" style="max-width: 100%;width: 100%;height: 500px" src="{{ pare_url_file($product->pro_avatar) }}"
                             class="lazyload">
                    </a>
                </div>
                <div class="right" id="product-detail" data-id="{{ $product->id }}">
                    <h1>{{  $product->pro_name }}</h1>
                    <div class="right__content">
                        <div class="info" style="width: 500px">
                            @if ( $product->pro_number <= 0 )
                                <p class="text-danger" style="font-size: 14px;margin-bottom: 5px;background: #dedede;padding: 5px;">Sản phẩm đã hết hàng</p>
                            @endif
                            <div class="prices">
                                @if ($product->pro_sale)
                                    <p>Giá niêm yết:
                                        <span class="value">{{ number_format($product->pro_price,0,',','.') }} đ</span>
                                    </p>
                                    @php
                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                    @endphp
                                    <p>
                                        Giá bán: <span
                                            class="value price-new">{{  number_format($price,0,',','.') }} đ</span>
                                        <span class="sale">-{{ number_format($product->pro_sale,0,',','.')}} %</span>
                                    </p>
                                @else
                                    <p>
                                        Giá bán: <span class="value price-new">{{  number_format($product->pro_price,0,',','.') }} đ</span>
                                    </p>
                                @endif
                                <p>
                                    <span>View :&nbsp</span>
                                    <span>{{ $product->pro_view }}</span>
                                </p>
                            </div>
                            <div class="btn-cart">
                                <a href="{{ route('get.shopping.add', $product->id) }}" title=""
                                   onclick="add_cart_detail('17617',0);" class="muangay {{ $product->pro_number <= 0 ? 'number-empty' : '' }}">
                                    <span>Mua ngay</span>
                                    <span>Hotline: 1800.6005</span>
                                </a>
                                <a href="{{ route('ajax_get.user.add_favourite', $product->id) }}"
                                   class="muatragop  {{ !\Auth::id() ? 'js-show-login' : 'js-add-favourite' }}">
                                    @if(collect($product->users)->firstWhere('id', \Auth::id()))
                                        <span>Đã Yêu thích</span>
                                    @else
                                        <span>Yêu thích</span>
                                    @endif
                                    <span style="text-transform: uppercase">Sản phẩm</span>
                                </a>
                            </div>
                            <div class="infomation">
                                <h2 class="infomation__title" style="font-weight: bold">Mô Tả Ngắn</h2>
                                <div class="infomation__group">
                                    {!! $product->pro_description !!}
                                </div>
                                <br>
                                <h2 class="infomation__title" style="font-weight: bold">Thông Tin</h2>
                                <div class="infomation__group">

                                    <div class="item">
                                        <p class="text1">Danh mục :</p>
                                        <h3 class="text2">
                                            @if (isset($product->category->c_name))
                                                <a style="text-decoration: underline; color: blue" href="{{  route('get.category.list', $product->category->c_slug).'-'.$product->pro_category_id }}">{{ $product->category->c_name }}</a>
                                            @else
                                                "[N\A]"
                                            @endif
                                        </h3>
                                    </div>
                                    @foreach($attribute as $key => $attr)
                                    <div class="item">
                                        @foreach($attr as  $k => $at)
                                            @if (in_array($k, $attributeOld))
                                                <p class="text1">{{ $key }} :</p>
                                                <h3 class="text2">{{ $at['atb_name'] }}</h3>
                                            @endif
                                        @endforeach
                                    </div>
                                    @endforeach
                                </div>
                            </div>
{{--                            @include('frontend.pages.product_detail.include._inc_keyword')--}}
                        </div>

                        <div class="ads">
                            <a href="#" title="Giam giá" target="_blank">
                                <img alt="Hoan tien" style="width: 100%; float: right;" src="{{ isset($event1->e_banner) ? pare_url_file($event1->e_banner) : asset('images/banner/1.jpg') }}">
                            </a>
                        </div>

                    </div>
                </div>
            </div>
            <div class="tab-content" style="margin-bottom: 10px;">
                <ul class="nav" style="margin-bottom: 15px;padding-top: 10px;">
                    <li><a href="" class="tab-item active" data-id="#tab-content">Nội dung</a></li>
                    <li><a href="" class="tab-item" data-id="#tab-rating">Đánh giá</a></li>
                    <li><a href="" class="tab-item" data-id="#tab-ratings">Xem Trước (3)</a></li>
                </ul>
                <div class="tab-item-content active" id="tab-content">
                    <div class="" style="margin-bottom: 10px">
                        {!! $product->pro_content !!}
                    </div>
                </div>
                <div class="tab-item-content" id="tab-rating">
                    @include('frontend.pages.product_detail.include._inc_ratings')
                </div>
                <div class="tab-item-content" id="tab-ratings">
                <div class="container">
                    {!! $product->preview !!}
                </div>
                </div>
            </div>


            <div class="comments">
                <div class="form-comment">
                    <form action="" method="POST">
                        <input type="hidden" name="productId" value="{{ $product->id }}">
                        <div class="form-group">
                            <textarea placeholder="Mời bạn để lại bình luận ..." name="comment" class="form-control" id="" cols="30" rows="5"></textarea>
                        </div>
                        <div class="footer">
                            <p>
                                <a href=""><i class="la la-camera"></i> Gửi ảnh</a>
                                <a href="">Quy định đăng bình luận</a>
                            </p>
                            <button class=" {{ \Auth::id() ? 'js-save-comment' : 'js-show-login' }}">Gửi bình luận</button>
                        </div>
                    </form>
                </div>
                @include('frontend.pages.product_detail.include._inc_list_comments')
            </div>

        </div>
        <div class="card-body product-des">
            <div class="left">
                <div class="tabs">
                    <div class="tabs__content">
                        <div class="product-five">
                            <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
                                @foreach($productsSuggests as $product)
                                    <div class="item">
                                        @include('frontend.components.product_item',['product' => $product])
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="right">
                <a href="#" title="Giam giá" target="_blank">
                    <img alt="Hoan tien" style="width: 100%" src="{{ isset($event3) ? pare_url_file($event3->e_banner) : asset('images/banner/2.jpg') }}">
                </a>
            </div>
        </div>
    </div>
    {{-- @if ($isPopupCaptcha >= 2)
        @include('frontend.pages.product_detail.include._inc_popup_captcha')
    @endif --}}
@stop
@section('script')
    <script>
		var ROUTE_COMMENT = '{{ route('ajax_post.comment') }}';
		var CSS = "{{ asset('css/product_detail.min.css') }}";
		var URL_CAPTCHA = '{{ route('ajax_post.captcha.resume') }}'
    </script>
    <script src="{{ asset('js/product_detail.js') }}" type="text/javascript"></script>
@stop
