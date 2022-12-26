<?php

namespace App\Console\Commands;

use App\Models\Product;
use Illuminate\Console\Command;

class ConvertProductCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'convert:product';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Convert Product';

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
     	$products = Product::all();
     	foreach ($products as $item)
		{
			$this->info("ID: ". $item->id);
			\DB::table('products')->where('id', $item->id)
				->update([
					'pro_number_import' => $item->pro_number
				]);
		}
    }
}
