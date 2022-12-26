<?php


namespace App\Services\Wallet;

use App\Models\SystemPay\PayIn;
use App\User;
use Carbon\Carbon;
use Illuminate\Support\Arr;

class WalletPayIn extends WalletPayBase
{
	public static function addPayInByUser(User $user, int $money, array $options = [])
	{
		$pi_provider = Arr::get($options,'pi_provider',0);
		$data['pi_status']   = PayIn::STATUS_SUCCESS;
		$data['pi_month']    = date('m');
		$data['pi_year']     = date('Y');
		$data['pi_user_id']  = $user->id;
		$data['pi_money']    = $money;
		$data['pi_provider'] = $pi_provider;
		$data['created_at']  = Carbon::now();
		$data['pi_admin_id'] = 0;
		$id                  = PayIn::insertGetId($data);

		$messages = Arr::get($options,'meta_detail',null);

		if ($id)
		{
			self::addHistoryIn($id, $user->id, $money, $user->balance, $messages );
		}
	}
}