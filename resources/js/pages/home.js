import RunCommon from './../common/run_common';
import { loadCss } from './../common/lazyload_file'
import 'owl.carousel/dist/owl.carousel.min';

var Home = {
    init()
    {
        this.loadProductRecently();

        // load slide
        // this.loadDataAfterLoadPage();
        this.loadCssLazy();
        this.runSlider();
        this.loadProductByCategory();
    },

    loadCssLazy()
    {
        if (typeof CSS != 'undefined')
        {
            loadCss(CSS);
        }
    },
    runSlider()
    {
        let itemProductOne = DEVICE === 'mobile' ? 2 : 4;
        let itemProductFive = DEVICE === 'mobile' ? 2 : 5;

        $('.js-banner').owlCarousel({
            animateOut: 'fadeOut',
            animateIn: 'fadeIn',
            items: 1,
            smartSpeed: 450,
            loop: true,
            autoplay: true
        });
        $('.js-product-one').owlCarousel({
            items: itemProductOne,
            lazyLoad: true,
            loop: true,
            dots: false,
            nav: true,
            margin: 10
        });
        $('.js-product-5').owlCarousel({
            items: itemProductFive,
            lazyLoad: true,
            loop: true,
            dots: false,
            nav: true,
            margin: 10
        });
    },

    loadProductRecently()
    {
        let checkRenderProduct = false;
        $(document).on( 'scroll', function(){
            if ($(window).scrollTop() > 150 && checkRenderProduct === false ) {

                checkRenderProduct = true;
                let products = localStorage.getItem('products');
                products = $.parseJSON(products)
                if (typeof routeRenderProductRecently !== "undefined") {
                    if (products.length > 0 )
                    {
                        $.ajax({
                            url : routeRenderProductRecently,
                            method : "GET",
                            data  : { id : products},
                            success : function(results)
                            {
                                $("#product-recently").html(results.data);
                                RunCommon.lazyLoadImage();

                            }
                        });
                    }
                }
            }
        });
    },
    loadProductByCategory()
    {
        let _this = _this;
        if (typeof routeRenderProductByCategory !== "undefined")
        {
            let checkRenderProduct = false;
            $(document).on( 'scroll', function(){
                if ($(window).scrollTop() > 300 && checkRenderProduct === false ) {
                    checkRenderProduct = true;
                    $.ajax({
                        url : routeRenderProductByCategory,
                        method : "GET",
                        success : function(results)
                        {
                            $("#product-by-category").html(results.data);
                            RunCommon.lazyLoadImage();
                            // _this.runSlider();
                            let itemProductFive = DEVICE === 'mobile' ? 2 : 5;

                            $('.js-product-5').owlCarousel({
                                items: itemProductFive,
                                lazyLoad: true,
                                loop: true,
                                dots: false,
                                nav: true,
                                margin: 10
                            });
                        }
                    });
                }
            });
        }
    },

    loadDataAfterLoadPage()
    {
        let _this = this;
        $(window).on('load', function() {
            console.log("window is loaded");
            if (typeof routeRenderSlide !== "undefined")
            {
                $.ajax({
                    url : routeRenderSlide,
                    method : "GET",
                    success : function(results)
                    {
                        $("#content-slide").html('').html(results.data);
                        _this.runSlider();
                    }
                });
            }
        });
    }
};
$(function () {
    Home.init();
    RunCommon.init();
});
