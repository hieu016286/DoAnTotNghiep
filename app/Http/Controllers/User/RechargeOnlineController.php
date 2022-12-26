<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Services\NganLuong\ProcessNlService;
use Illuminate\Http\Request;

class RechargeOnlineController extends Controller
{
	
    public function processSendData(Request $request)
	{
		$config       = config('recharge');
		$processApiNl = new ProcessNlService($config['MERCHANT_ID'], $config['MERCHANT_PASS'], $config['RECEIVER'], $config['URL_API']);
		$total_amount = (int)str_replace(',','',$request->money);

		if ($total_amount < 10000) {
			\Session::flash('toastr', [
				'type'    => 'error',
				'message' => 'Số tiền tối thiểu phải lớn hơn 10.000 vnđ'
			]);
			return redirect()->back();
		}

		$array_items[0] = array('item_name1'     => 'Product name',
								'item_quantity1' => 1,
								'item_amount1'   => $total_amount,
								'item_url1'      => 'http://nganluong.vn/');

		$array_items = array();

		$payment_method = $request->option_payment;
		$bank_code      = $request->bankcode;
		$order_code     = "macode_" . time();
		$return_url = route('get.recharge.success',['shopping' => route('get.shopping.list')]);
		$cancel_url = route('get.recharge.cancel', [
			'orderid' => $order_code
		]);

		$cancel_url = urlencode($cancel_url);

		$buyer_fullname = 'Phan Trung Phú';
		$buyer_email    = 'phupt.humg.94@gmail.com';
		$buyer_mobile   = '0986420994';

		$payment_type      = '';
		$order_description = '';
		$buyer_address     = '';
		$tax_amount        = 0;
		$fee_shipping      = 0;
		$discount_amount   = 0;

		if ($payment_method == 'ATM_ONLINE') {
			$results = $processApiNl->BankCheckout($order_code, $total_amount, $bank_code, $payment_type, $order_description, $tax_amount,
				$fee_shipping, $discount_amount, $return_url, $cancel_url, $buyer_fullname, $buyer_email, $buyer_mobile,
				$buyer_address, $array_items);
		}elseif ($payment_method == 'NL')
		{
			$results= $processApiNl->NLCheckout($order_code,$total_amount,$payment_type,$order_description,$tax_amount,
				$fee_shipping,$discount_amount,$return_url,$cancel_url,$buyer_fullname,$buyer_email,$buyer_mobile,
				$buyer_address,$array_items);
		}

		if (isset($results)) {
			if ($results->error_code =='00'){
				return redirect()->to($results->checkout_url);
				//Cập nhât order với token  $nl_result->token để sử dụng check hoàn thành sau này
			}else{
				echo $results->error_message;
			}
		}

		die;
	}

}
