<?php

namespace App\Console\Commands;

use App\Services\ShoppingCartService\PayManager;
use Illuminate\Console\Command;

class DrivePayCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'pay:test-drive';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Test drive pay';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $this->info("init command test");
        $transaction = [
            "tst_name"        => " hoang",
            "tst_phone"       => "0986420994",
            "tst_address"     => "Xóm 3 - Xã - Quỳnh Ngọc - Huyện Quỳnh Lưu - Tỉnh Nghệ An",
            "tst_email"       => "hoanganh511@gmai,com",
            "tst_note"        => "Giao hàng tận nơi ạ",
            "tst_user_id"     => 2,
            "tst_total_money" => "2192130"
        ];

        $result = new PayManager($transaction);
    }
}
