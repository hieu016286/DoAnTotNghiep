<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Services\NganLuong\ProcessNlService;
use App\Services\Wallet\WalletPayIn;
use App\User;
use Illuminate\Http\Request;

class ProcessRechargeOnlineController extends Controller
{
	public function callbackSuccess(Request $request)
	{
		\Log::info("Success Pay Online");
		$config       = config('recharge');
		$processApiNl = new ProcessNlService($config['MERCHANT_ID'], $config['MERCHANT_PASS'], $config['RECEIVER'], $config['URL_API']);

		$results = $processApiNl->GetTransactionDetail($_GET['token']);

		if($results){
			$nl_errorcode           = (string)$results->error_code;
			$nl_transaction_status  = (string)$results->transaction_status;
			if($nl_errorcode == '00') {
				if($nl_transaction_status == '00') {
					// Call wallet xử lý
					$money = (int)(string)$results->total_amount;
					$user = User::findOrFail(get_data_user('web'));
					if ($user) {
						$user->balance += $money;
						$user->save();

						WalletPayIn::addPayInByUser($user, $money, [
							'meta_detail' => 'Nạp tiền Online',
							'pi_provider' => 3
						]);
					}

					\Session::flash('toastr', [
						'type'    => 'success',
						'message' => 'Nạp tiền thành công'
					]);
					if ($results->shopping) {
						\Session::flash('toastr', [
							'type'    => 'success',
							'message' => 'Nạp tiền thành công, Mời bạn xác nhận thanh toán'
						]);
						return  redirect()->to($results->shopping);
					}

					return redirect()->to('/');
				}
			}else{
				echo $results->GetErrorMessage($nl_errorcode);
			}
		}
	}

	public function callbackCancel()
	{
		return redirect()->to('/');
	}
}
