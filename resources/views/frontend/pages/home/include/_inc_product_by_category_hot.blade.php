@foreach($categoriesHot as $category)
    <div class="product-five">
        <div class="top">
            <a href="#" class="main-title main-title-2">{{ $category->c_name }}</a>
        </div>

        <div class="bot js-product-5 owl-carousel owl-theme owl-custom">
            @if (isset($category->products))
                @foreach($category->products as $product)
                    <div class="item">
                        @include('frontend.components.product_item',['product' => $product])
                    </div>
                @endforeach
            @endif
        </div>
    </div>
@endforeach
