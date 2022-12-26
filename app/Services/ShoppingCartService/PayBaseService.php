<?php


namespace App\Services\ShoppingCartService;


use App\Models\Order;
use Carbon\Carbon;
use Illuminate\Support\Arr;

class PayBaseService
{
    /**
     * @param $data
     * @return array
     */
    public function getDataTransaction($data)
    {
        return  [
            "tst_name"        => Arr::get($data,'tst_name'),
            "tst_phone"       => Arr::get($data,'tst_phone'),
            "tst_address"     => Arr::get($data,'tst_address'),
            "tst_email"       => Arr::get($data,'tst_email'),
            "tst_note"        => Arr::get($data,'tst_note'),
            "tst_user_id"     => Arr::get($data,'tst_user_id'),
            "tst_total_money" => Arr::get($data,'tst_total_money'),
            "created_at"      => Carbon::now()
        ];
    }

    /**
     * @param $order
     * @param $transactionID
     * @return array
     */
    public function getDataOrder($order, $transactionID)
    {
        return [
            'od_transaction_id' => $transactionID,
            'od_product_id'     => $order->id,
            'od_sale'           => $order->options->sale,
            'od_qty'            => $order->qty,
            'od_price'          => $order->price
        ];
    }

    /**
     * @param $productId
     * Tăn số lượng sản phẩm
     */
    public function incrementPayProduct($productId)
    {
        \DB::table('products')
            ->where('id', $productId)
            ->increment("pro_pay");
    }

    /**
     * @param $orders
     * @param $transactionID
     * Lưu chi tiết đơn hàng
     */
    public function syncOrder($orders, $transactionID)
    {
        if($orders) {
            foreach ($orders as $key => $item) {
                $order = $this->getDataOrder($item, $transactionID);
                $order['created_at'] = Carbon::now();
                //1. Lưu chi tiết đơn hàng
                Order::insert($order);

                //2. Tăng pay ( số lượt mua của sản phẩm dó)
                $this->incrementPayProduct($item->id);
            }
        }
    }
}
