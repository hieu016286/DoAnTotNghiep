import toast from "toastr";

var Wallet = {
	init : function () {
		this.nextTab();
		this.showPopup();
		this.formatPrice();
		this.validateForm();
	},
	showPopup()
	{
		try{
			$(".js-popup-wallet").click(function (event) {
				event.preventDefault()
				let $popupWallet = $("#popup-wallet");
				$popupWallet.modal({
					escapeClose: false,
					clickClose: false,
					showClose: false
				});
				$popupWallet.parents('.blocker').addClass('customer-modal-wallet')
				// $(".js-show-dropdown").trigger('click');
			})
		}catch (e) {
			console.log('-- cannot modal popup-update-info')
		}
	},

	nextTab()
	{
		$(".js-item-tab-wallet").click(function (event) {
			event.preventDefault();
			$("input[name='option_payment']").prop('disabled', true);
			$(".js-item-tab-wallet").removeClass('active');
			$(".content-content .type").removeClass('active');

			let $this = $(this);
			$this.addClass('active');
			let target = $this.attr('data-active');
			$(target).addClass('active');
			$(target).find("input[name='option_payment']").prop('disabled', false);
		})
	},

	formatPrice()
	{
		$('#money_online').on('input', function(e){
			$(this).val(formatCurrency(this.value.replace(/[,VNĐ]/g,'')));
		}).on('keypress',function(e){
			if(!$.isNumeric(String.fromCharCode(e.which))) e.preventDefault();
		}).on('paste', function(e){
			var cb = e.originalEvent.clipboardData || window.clipboardData;
			if(!$.isNumeric(cb.getData('text'))) e.preventDefault();
		});

		function formatCurrency(number){
			var n = number.split('').reverse().join("");
			var n2 = n.replace(/\d\d\d(?!$)/g, "$&,");
			return  n2.split('').reverse().join('') ;
		}
	},

	validateForm()
	{
		let _this = this;
		$(".js-save-wallet").click(function (event) {
			event.preventDefault();
			let $this = $(this);
			let price = $("#money_online").val();
			let check =  $.trim(price).length;
			if (check <= 0)
			{
				$("#money_online").next().html('Mời bạn điền số tiền nạp')
				return  false;
			}else if (check < 6){
				$("#money_online").next().html('Giá trị tối thiểu là 10.000 vnđ')
				return  false;
			}

			if ($("#popup-wallet .type-atm").hasClass('active')) {
				let name = $("#popup-wallet input[name='bankcode']:checked").val();

				if (name == undefined) {
					toast.warning("Mời bạn chọn ngân hàng thanh toán");
					return  false;
				}
			}

			$("#form-wallet").submit();

			// Check nạp nhanh
			// if ($("#popup-wallet .type-fast").hasClass('active')) {
			// 	if (check < 7) {
			// 		let $moneyElement = $("#money_online");
			// 		$moneyElement.next().html('Số tiền nạp nhanh phải lớn hơn hoạc = 100.000 vnđ')
			// 		$moneyElement.val('100,000');
			// 		return  false;
			// 	}
			// }

			// let recaptcha = $('#g-recaptcha-response').val();
			// if (!recaptcha) {
			// 	toast.warning('Bạn chưa xác nhận "Tôi không phải người máy" kìa!');
			// 	return false;
			// }

			// if (typeof URL_CHECK_CAPTCHA !== "undefined")
			// {
			// 	$.ajax({
			// 		method: "POST",
			// 		url: URL_CHECK_CAPTCHA,
			// 		data: {
			// 			recaptcha: recaptcha
			// 		},
			// 	}).done(function (results) {
			// 		if ($("#popup-wallet #form-pay-fast").hasClass('active'))
			// 		{
			// 			let URL = $this.attr('data-url');
			// 			_this.sendAjaxFast(price, URL)
			// 		}else {
			// 			$("#form-wallet").submit();
			// 		}
			// 	});
			// }
		})
	},
}

export default Wallet;