<?php


namespace App\Services\ShoppingCartService;


use App\Mail\TransactionSuccess;
use App\Models\Order;
use App\Models\Transaction;

class PayTransferService extends PayBaseService implements PayServiceInterface
{
    protected $data;
    protected $idTransaction;
	protected $shopping;
    public function __construct($data, $shopping)
    {
        $this->data = $data;
        $this->shopping = $shopping;
        $this->saveTransaction();
    }

    public function saveTransaction()
    {
        $dataTransaction = $this->getDataTransaction($this->data);
        $this->idTransaction = Transaction::insertGetId($dataTransaction);
        $orders = $this->data['options']['orders'] ?? [];
        if ($this->idTransaction)
            $this->syncOrder($orders, $this->idTransaction);

//        \Mail::to($this->data['tst_email'])->send(new TransactionSuccess($this->shopping));
        return $this->idTransaction;
    }
}
