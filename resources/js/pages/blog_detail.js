import 'slider-pro';
import 'owl.carousel/dist/owl.carousel.min';
import RunCommon from './../common/run_common';
var BlogDetail = {
    init(){
    },
};
$(function () {
    BlogDetail.init();
    RunCommon.init();
    $(".js-menu-cate").mouseenter(function(){
        console.log('111');
        $("#menu-main").show();
    })
});
