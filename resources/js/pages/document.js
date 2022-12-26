import RunCommon from './../common/run_common';
import { loadCss } from './../common/lazyload_file'
import 'owl.carousel/dist/owl.carousel.min';

var Home = {
    init()
    {
        this.loadDataAfterLoadPage();
        this.loadCssLazy();
        this.loadFile();
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
    },

    loadCssLazy()
    {
        if (typeof CSS != 'undefined')
        {
            loadCss(CSS);
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
    },
     loadFile()
    {
        if (typeof URL_LOAD_DOCUMENT !== "undefined")
        {
            $.ajax({
                url : URL_LOAD_DOCUMENT,
                beforeSend: function (xhr) {
                    $("#content-document").html(`<div class="sk-circle">
                          <div class="sk-circle1 sk-child"></div>
                          <div class="sk-circle2 sk-child"></div>
                          <div class="sk-circle3 sk-child"></div>
                          <div class="sk-circle4 sk-child"></div>
                          <div class="sk-circle5 sk-child"></div>
                          <div class="sk-circle6 sk-child"></div>
                          <div class="sk-circle7 sk-child"></div>
                          <div class="sk-circle8 sk-child"></div>
                          <div class="sk-circle9 sk-child"></div>
                          <div class="sk-circle10 sk-child"></div>
                          <div class="sk-circle11 sk-child"></div>
                          <div class="sk-circle12 sk-child"></div>
                        </div>`)
                },
                method : "GET",
                success : function(results)
                {
                    $("#content-document").html(results.html)
                }
            });
        }
    }
};
$(function () {
    Home.init();
    RunCommon.init();
});
