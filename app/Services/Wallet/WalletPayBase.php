<?php


namespace App\Services\Wallet;


use App\Models\SystemPay\PayHistory;
use Carbon\Carbon;

class WalletPayBase
{
	public static function addHistoryIn($payID, $userID, $fluctuations, $balance, $messages = null)
	{
		PayHistory::insert([
			'ph_code'        => 'IN' . $payID,
			'ph_user_id'     => $userID,
			'ph_credit'      => $fluctuations,
			'ph_balance'     => $balance,
			'ph_status'      => 1,
			'ph_meta_detail' => $messages,
			'ph_month'       => date('m'),
			'ph_year'        => date('Y'),
			'created_at'     => Carbon::now()
		]);
	}

	public static function addHistoryOut($payID, $userID, $fluctuations, $balance, $messages = null)
	{
		PayHistory::insert([
			'ph_code'        => 'OUT' . $payID,
			'ph_user_id'     => $userID,
			'ph_debit'       => $fluctuations,
			'ph_balance'     => $balance,
			'ph_status'      => 1,
			'ph_meta_detail' => $messages,
			'ph_month'       => date('m'),
			'ph_year'        => date('Y'),
			'created_at'     => Carbon::now()
		]);
	}
}