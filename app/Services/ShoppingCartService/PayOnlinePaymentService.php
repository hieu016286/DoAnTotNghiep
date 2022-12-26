<?php


namespace App\Services\ShoppingCartService;


use App\Models\SystemPay\PayHistory;
use App\Models\SystemPay\PayIn;
use App\Models\SystemPay\PayOut;
use App\Models\Transaction;
use App\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;

class PayOnlinePaymentService extends PayBaseService implements PayServiceInterface
{
    protected $data;
    protected $idTransaction;

    public function __construct($data)
    {
        $this->data = $data;
        $this->checkExistsUser();

    }

    /**
     * @return bool
     * Kiểm tra tồn tại user
     */
    public function checkExistsUser()
    {
        $userId = $this->data['tst_user_id'] ?? 0;
        $user   = User::find($userId);
        if ($user) {
            $this->checkBalanceUser($user);
        }

        return false;
    }

    /**
     * @param $user
     * @return bool
     * Kiểm tra số tiền
     */
    public function checkBalanceUser($user)
    {
        if ($user->balance >= $this->data['tst_total_money']) {
            $this->saveTransaction();
        }

        return false;
    }

    /**
     * Tiến hành xử lý
     */
    public function saveTransaction()
    {
        $dataTransaction             = $this->getDataTransaction($this->data);
        $dataTransaction['tst_type'] = Transaction::TYPE_ONLINE;

        //1. Lưu đơn hàng
        $this->idTransaction = Transaction::insertGetId($dataTransaction);
        $orders              = $this->data['options']['orders'] ?? [];
        //2. Lưu chi tiết đơn hàng
        if ($this->idTransaction)
            $this->syncOrder($orders, $this->idTransaction);

        $money  = $dataTransaction['tst_total_money'];
        $userID = $dataTransaction['tst_user_id'];
        //3. Trừ tiền
        $this->deductionMoney($money, $userID);

        //4. Lưu thống kê
        $this->savePayOut($money, $userID, $this->idTransaction);

        // Mail::to($request->tst_email)->send(new TransactionSuccess($shopping));
        return $this->idTransaction;
    }

    public function deductionMoney($money, $userId)
    {
        \DB::table('users')->where('id', $userId)
            ->decrement('balance', $money);
    }

    public function savePayOut($money, $userId, $transactionID)
    {
        $dataPayOut = [
            'po_status'         => PayOut::STATUS_SUCCESS,
            'po_month'          => date('m'),
            'po_transaction_id' => $transactionID,
            'po_year'           => date('Y'),
            'po_user_id'        => $userId,
            'po_money'          => $money,
            'created_at'        => Carbon::now()
        ];

        $idPayOut = PayOut::insertGetId($dataPayOut);

        if ($idPayOut) {
            PayHistory::insert([
                'ph_code'    => 'PAYOUT' . $idPayOut,
                'ph_user_id' => $userId,
                'ph_debit'   => $money,
                'ph_balance' => \Auth::user()->balance,
                'ph_status'  => 1,
                'ph_month'   => date('m'),
                'ph_year'    => date('Y'),
                'created_at' => Carbon::now()
            ]);
        }
        Log::info("save OK");
    }

}
