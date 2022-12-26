import './../components/open_sidebar';
import LazyLoad from './../library/lazyload.min.js';
import toast  from 'toastr';
import Wallet from "../components/wallet";
var RunCommon = {
    init()
    {
        this.lazyLoadImage();
        this.runToken();
        this.runMessages();
        this.messagesLogin();
        this.showCategory();
        this.fixTopMenu();
        this.showDropdownUser();
        Wallet.init();
    },

    showDropdownUser()
    {
        $(".js-show-dropdown").click(function (event) {
            event.preventDefault();
            $(".header-menu-user").slideToggle();
        })
    },

    runToken()
    {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    },

    runMessages()
    {
        toast.options = {
            "positionClass": "toast-bottom-center",
        }
        
        if (typeof TYPE_MESSAGE != "undefined")
        {
            switch (TYPE_MESSAGE) {
                case 'success':
                    toast.success(MESSAGE)
                    break;
                case 'error':
                    toast.error(MESSAGE)
                    break;
            }
        }
    },

    lazyLoadImage()
    {
        (function () {

            function logElementEvent(eventName, element) {

                Date.now(), eventName, element.getAttribute("data-src")
            }

            let ll = new LazyLoad({
                elements_selector: '.lazy',
                load_delay: 500,
                threshold: 0,
                callback_enter: function (element) {

                    logElementEvent("ENTERED", element);
                },
                callback_load: function (element) {
                    logElementEvent("LOADED", element);
                },
                callback_set: function (element) {
                    logElementEvent("SET", element);
                },
                callback_error: function (element) {
                    logElementEvent("ERROR", element);
                    // element.src = "";
                }
            });

            $(".card-img-top").show();
        }());
    },

    messagesLogin()
    {
        $(".js-show-login").click(function(event){
            event.preventDefault();
            toast.warning("Bạn phải đăng nhập để thực hiện tính năng này");
            return false;
        })

        $(".number-empty").click(function(event){
            event.preventDefault();
            toast.warning("Sản phẩm đã hết hàng");
            return false;
        })

        $(".js-maintain").click(function (event) {
            event.preventDefault();
            toast.warning("Tính năng này đang phát triển. Mời bạn quay lại sau");
            return false;
        })
    },

    showCategory()
    {
        $(".js-menu-cate").mouseenter(function(){
            $("#menu-main").show();
        })
    },

    fixTopMenu()
    {
        $(document).on( 'scroll', function(){
            let $header = $(".commonTop");
            if ($(window).scrollTop() > 150 ) {
                console.log("fix Top")
                if (!$header.hasClass('fix-top'))
                {
                    $header.addClass('fix-top')
                }

            }else {
                if ($header.hasClass('fix-top'))
                {
                    $header.removeClass('fix-top')
                }

            }
        });
    }
};

export default RunCommon
