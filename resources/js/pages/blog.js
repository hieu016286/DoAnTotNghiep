import 'slider-pro';
import 'owl.carousel/dist/owl.carousel.min';
import RunCommon from './../common/run_common';
var Blog = {
    init(){
    },
};
$(function () {
    Blog.init();
    RunCommon.init();
    $(".js-menu-cate").mouseenter(function(){
        console.log('111');
        $("#menu-main").show();
    })
});
