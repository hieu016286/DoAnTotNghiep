<?php


namespace App\Exports;


use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Illuminate\Contracts\View\View;

class TransactionInvoiceExport implements FromView
{
	private $transaction;

	public function __construct($transaction)
	{
		$this->transaction = $transaction;
	}

	public function view(): View
	{
		return view('test.hoa-don-ban', [
			'transaction' => $this->transaction
		]);
	}
}