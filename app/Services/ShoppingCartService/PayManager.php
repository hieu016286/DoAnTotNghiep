<?php


namespace App\Services\ShoppingCartService;


use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Log;

class PayManager
{
    protected $drivePay;
    protected $data;

    public function __construct($data, $shopping, $options = [])
    {
        
        $drive          = Arr::get($options, 'drive', 'transfer');
        $configDrive    = config('shopping_cart.drive_pay.' . $drive);
        $this->data     = $data;
     
        $this->drivePay = new $configDrive['process']($data, $shopping);
    }
}
