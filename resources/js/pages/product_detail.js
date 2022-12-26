import 'slider-pro';
import 'owl.carousel/dist/owl.carousel.min';
import RunCommon from './../common/run_common';
import Comments from '../components/comments.js';
import {loadCss} from "../common/lazyload_file";
import toast  from 'toastr';
import 'jquery-modal'
var ProductDetail = {
    init(){
        $(".js-menu-cate").mouseenter(function(){
            $("#menu-main").show();
        })
        this.runSlider();
        this.addProductRecently();
        this.loadCssLazy();
        this.addFavourite();
        this.showPopupCaptcha();
        this.submitCaptcha();
        this.showFormReview();
        this.processReview();
        this.showTabContent();
    },

    showTabContent()
    {
        $(".tab-item").click(function (event) {
            event.preventDefault();
            let $this = $(this);
            $(".tab-item").removeClass('active')
            let tabContent = $this.attr('data-id');
            $this.addClass('active');
            $(".tab-item-content").removeClass('active');
            $(tabContent).addClass('active')
        })
    },

    showFormReview()
    {
        // Show form review
        $(".js-review").click(function (event) {
            event.preventDefault();
            let $this = $(this);
            if ($this.hasClass('js-check-login')) {
                toast.warning("Đăng nhập để thực hiện chức năng này");
                return false;
            }
            if ($(this).hasClass('active')) {
                $(this).text("Gửi đánh giá").addClass('btn-success').removeClass('btn-default active')
            } else {
                $(this).text("Đóng lại").addClass('btn-default active').removeClass('btn-success');
            }
            $("#block-review").slideToggle();
        })
    },

    processReview()
    {
        // Hover icon thay đổi số sao dánh giá
        let $item = $("#ratings i");
        let arrTextRating = {
            1: "Không thích",
            2: "Tạm được",
            3: "Bình thường",
            4: "Rất tốt",
            5: "Tuyệt vời"
        }

        $item.mouseover(function () {
            let $this = $(this);
            let $i = $this.attr('data-i');
            $("#review_value").val($i);
            $item.removeClass('active');
            $item.each(function (key, value) {
                if (key + 1 <= $i) {
                    $(this).addClass('active')
                }
            })
            $("#reviews-text").text(arrTextRating[$i]);
        })

        $(".js-process-review").click(function (event) {
            event.preventDefault();

            let URL = $(this).parents('form').attr('action');
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: URL,
                method: "POST",
                data: $('#form-review').serialize(),
            }).done(function (results) {
                $('#form-review')[0].reset();
                $(".js-review").trigger('click');
                if (results.html) {
                    $(".reviews_list .item").last().remove();
                    $(".reviews_list").prepend(results.html);
                }
                toast.success(results.messages);
            });
        })
    },

    showPopupCaptcha()
    {
        $("#popup-captcha").modal({
            escapeClose: false,
            clickClose: false,
            showClose: false
        });
    },

    submitCaptcha()
    {
        $('.js-submit-captcha').on('click', function (e) {
            e.preventDefault();
            let recaptcha = $('#g-recaptcha-response').val();
            if (!recaptcha) {
                toast.warning('Bạn chưa xác nhận "Tôi không phải người máy" kìa!');
                return false;
            }

            $.ajax({
                method: "POST",
                url: URL_CAPTCHA,
                data: {
                    recaptcha: recaptcha
                },
            }).done(function (results) {
                toast.success(results.message);
                setTimeout(function () {
                    window.location.reload()
                },2000)
            });
        });
    },

    loadCssLazy()
    {
        if (typeof CSS != 'undefined')
        {
            loadCss(CSS);
        }
    },

    addFavourite()
    {
        //Thêm sản phẩm yêu thích
        $(".js-add-favourite").click(function (event) {
            event.preventDefault();
            let $this = $(this);
            let URL = $this.attr('href');

            if (URL) {
                $.ajax({
                    method: "POST",
                    url: URL,
                }).done(function (results) {
                    toast.warning(results.messages);
                });
            }
        })
    },

    runSlider(){
        $('#my-slider').sliderPro({
            width: 660,
            height: 400,
            arrows: true,
            buttons: false,
            fade: true,
            fadeDuration: 600,
            shuffle: true,
            autoplayDelay: 4000,
            orientation: 'horizontal',
            thumbnailPosition: 'right',
            thumbnailArrows: true,
            fullScreen: true,
            fadeFullScreen: true,
            breakpoints: {
                800: {
                    thumbnailsPosition: 'bottom',
                    thumbnailWidth: 100,
                    thumbnailHeight: 80,
                    thumbnailArrows: false,
                    thumbnailPointer: false
                },
                500: {
                    orientation: 'horizontal',
                    thumbnailsPosition: 'bottom',
                    thumbnailWidth: 82,
                    thumbnailHeight: 90,
                    thumbnailArrows: false,
                    thumbnailPointer: false
                }
            }
        });
        let itemProductFive = DEVICE === 'mobile' ? 2 : 4;
        $('.js-product-5').owlCarousel({
            items: itemProductFive,
            lazyLoad: true,
            loop: true,
            dots: false,
            nav: true,
            margin: 10
        });
    },

    addProductRecently()
    {
        let id = $("#product-detail").attr('data-id');

        let products = localStorage.getItem('products');

        if (products == null)
        {
            let arrayProduct = new Array();
            arrayProduct.push(id)
            localStorage.setItem('products',JSON.stringify(arrayProduct))

        }else
        {
            // chuyển về mảng
            products = $.parseJSON(products)
            if ( products.indexOf(id) === -1)
            {
                products.push(id);
                localStorage.setItem('products',JSON.stringify(products))
            }
        }
    }
};
$(function () {
    ProductDetail.init();
    RunCommon.init();
    Comments.init();
});
