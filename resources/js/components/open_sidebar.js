var OpenSidebar = {
    init(){
        this.openSidebar();
    },
    openSidebar(){
        $('.js-open-bar').on('click', function (e) {
            e.preventDefault();
            let $this = $(this);
            $this.toggleClass('change');
        });
    }
};
$(function () {
    OpenSidebar.init();
});