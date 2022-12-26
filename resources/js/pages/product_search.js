import 'slider-pro';
import 'owl.carousel/dist/owl.carousel.min';
import RunCommon from './../common/run_common';
import {loadCss} from "../common/lazyload_file";

var ProductSearch = {
    init() {
        this.checkHideActiveParam();
        this.showSort();
        this.loadCssLazy();
        this.getListProductView();
    },

    loadCssLazy()
    {
        if (typeof CSS != 'undefined')
        {
            loadCss(CSS);
        }
    },

    checkHideActiveParam() {
        $(".js-param-search").click(function (event) {
            event.preventDefault();
            let $this = $(this);
            let param = $this.attr('data-param');
            let link = $this.find("a").attr("href");
            if ($this.hasClass('active')) link = link.replace(param, "");
            window.location.href = link;
        })
    },

    showSort() {
        $(".js-show-sort").click(function (event) {
            event.preventDefault();
            let $nextUl = $(this).next();
            $nextUl.slideToggle();
        })
    },

    getListProductView()
    {
        if (typeof LOADPRODUCTVIEW !== "undefined")
        {
            let products = localStorage.getItem('products');
            products = $.parseJSON(products)

            $.ajax({
                url : LOADPRODUCTVIEW,
                method : "GET",
                data  : { id : products},
                success : function(results)
                {
                    $("#user-product-view").html(results.data);
                    RunCommon.init();
                }
            });
        }
    },

   
};
$(function () {
    ProductSearch.init();
    RunCommon.init();
});
