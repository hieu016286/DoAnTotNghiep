<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestCreateInvoiceEntered;
use App\Models\InvoiceEntered;
use App\Models\Menu;
use App\Models\Order;
use App\Models\Product;
use App\Models\Import_histories;
use App\Models\Supplier;
use App\Models\Transaction;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AdminInvoiceEnteredController extends Controller
{
    public function index()
    {
        $invoiceEntered = InvoiceEntered::with('suppliere','product')->orderByDesc('id')->paginate(10);
        $viewData = ['invoiceEntered' => $invoiceEntered];

        return view('admin.invoice_entered.index', $viewData);
    }

    public function hansudung($id)
    {
        $invoiceEntered = InvoiceEntered::where('ie_product_id',$id)->get();

        $orderProductQty = InvoiceEntered::where('ie_product_id',$id)->first()->ie_number_sold;
        $orders = Order::where('od_product_id', $id)->get();
        $arr = Order::select('od_qty', 'od_price', 'od_transaction_id')->where('od_product_id', $id)->get()->toArray();

        foreach($arr as $key => $item) {
            if(Transaction::where('id', $item['od_transaction_id'])->first()->tst_status != 3) {
                unset($arr[$key]);
            }
        }
        foreach($invoiceEntered as $invoice) {
            if($orderProductQty > 0) {
                if($orderProductQty - $invoice->ie_number >= 0) {
                    $invoice['daban'] = $invoice->ie_number;
                } else {
                    $invoice['daban'] = $orderProductQty;
                }
                $orderProductQty -= $invoice->ie_number;
            } else {
                $invoice['daban'] = 0;
            }
        }

        $new_arr = [];
        foreach($arr as $item) {
            if($item['od_qty'] > 1) {
                for($i = 0; $i < $item['od_qty']; $i++) {
                    $new_arr[] = [
                        'od_qty' => 1,
                        'od_price' => $item['od_price']
                    ];
                }
            } else {
                $new_arr[] = $item;
            }
        }

        $sum = $orders->sum('od_qty');
        foreach($invoiceEntered as $invoice) {
            if($sum > 0) {
                if($sum - $invoice->ie_number >= 0) {
                    $invoice['order'] = array_slice($new_arr,0, $invoice->ie_number);
                } else {
                    $invoice['order'] = $new_arr;
                }
                $sum -= $invoice->ie_number;
                $new_arr = array_slice($new_arr, $invoice->ie_number);
            } else {
                $invoice['test'] = [];
            }
        }
        $datenow = date('Y-m-d 00:00:00');
        return view('admin.inventory.hansudung', compact('invoiceEntered','datenow'));
    }

    public function create()
    {
       
    	$suppliere = Supplier::all();
    	$products = Product::select('id','pro_name','pro_price','pro_number')->orderByDesc('id')->get();

        return view('admin.invoice_entered.create', compact('suppliere','products'));
    }

    public function store(AdminRequestCreateInvoiceEntered $request)
    {
        $data1 = new InvoiceEntered();
        $data1['created_at'] =  Carbon::now();
        $tongtien = $request->ie_number * $request->ie_money;
        $data1['ie_total_money'] = $tongtien;
        $data1['ie_suppliere'] = $request->ie_suppliere;
        $data1['ie_product_id'] = $request->ie_product_id;
        $products = Product::find($request->ie_product_id);
        $products['pro_number_import'] = $products->pro_number_import + $request->ie_number;
        $products['pro_number'] = $products->pro_number + $request->ie_number;
        $data1['ie_number_sold'] = 0;
        $data1['ie_money'] = $request->ie_money;
        $data1['ie_status'] = 0;
        $data1['ie_number'] = $request->ie_number;
        $data1['NgaySX'] = $request->nsx ? Carbon::parse($request->nsx)->format('Y-m-d') : null;
        $data1['Hansudung'] = $request->hsd ? Carbon::parse($request->hsd)->format('Y-m-d') : null;
        $thanhtoan = $request->ie_the_advance;
        if($thanhtoan >= $tongtien) {
            $data1['ie_the_advance'] = $tongtien;
            $sodu = $thanhtoan-$tongtien;
        }
        if($thanhtoan < $tongtien) {
            $data1['ie_the_advance'] = $thanhtoan;
            $sodu = 0;
        }
        $data1->save();
        $products->save();
        $history = new Import_histories();
        $history['id_invoice'] = $data1->id;
        $history['thanhtoan'] = $data1->ie_the_advance;
        $history->save();

        $checkProduct2 = $request->ie_product_id2;
        $checkProduct3 = $request->ie_product_id3;

        if($checkProduct2 != 'none') {
            $data2 = new InvoiceEntered();
            $data2['created_at'] =  Carbon::now();
            $tongtien = $request->ie_number2 * $request->ie_money2;
            $data2['ie_total_money'] = $tongtien;
            $data2['ie_suppliere'] = $request->ie_suppliere;
            $data2['ie_product_id'] = $request->ie_product_id2;
            $products2 = Product::find($request->ie_product_id2);
            $products2['pro_number_import'] = $products2->pro_number_import + $request->ie_number2;
            $products2['pro_number'] = $products2->pro_number + $request->ie_number2;
            $data2['ie_number_sold'] = 0;
            $data2['ie_money'] = $request->ie_money2;
            $data2['ie_status'] = 0;
            $data2['ie_number'] = $request->ie_number2;
            $data2['NgaySX'] = $request->nsx2 ? Carbon::parse($request->nsx2)->format('Y-m-d') : null;
            $data2['Hansudung'] = $request->hsd2 ? Carbon::parse($request->hsd2)->format('Y-m-d') : null;
            if($sodu >= $tongtien) {
                $data2['ie_the_advance'] = $tongtien;
                $sodu2 = $thanhtoan-$tongtien;
            }
            if($sodu < $tongtien) {
                $data2['ie_the_advance'] = $sodu;
                $sodu2 = 0;
            }
            $data2->save();
            $products2->save();
            $history2 = new Import_histories();
            $history['id_invoice'] = $data2->id;
            $history['thanhtoan'] = $data2->ie_the_advance;
            $history2->save();

            if($checkProduct3 != 'none') {
                $data3 = new InvoiceEntered();
                $data3['created_at'] =  Carbon::now();
                $tongtien = $request->ie_number3 * $request->ie_money3;
                $data3['ie_total_money'] = $tongtien;
                $data3['ie_suppliere'] = $request->ie_suppliere;
                $data3['ie_product_id'] = $request->ie_product_id3;
                $products3 = Product::find($request->ie_product_id3);
                $products3['pro_number_import'] = $products3->pro_number_import + $request->ie_number3;
                $products3['pro_number'] = $products3->pro_number + $request->ie_number3;
                $data3['ie_number_sold'] = 0;
                $data3['ie_money'] = $request->ie_money3;
                $data3['ie_status'] = 0;
                $data3['ie_number'] = $request->ie_number3;
                $data3['NgaySX'] = $request->nsx3 ? Carbon::parse($request->nsx3)->format('Y-m-d') : null;
                $data3['Hansudung'] = $request->hsd3 ? Carbon::parse($request->hsd3)->format('Y-m-d') : null;
                if($sodu2 >= $tongtien) {
                    $data3['ie_the_advance'] = $tongtien;
                }
                if($sodu2 < $tongtien) {
                    $data3['ie_the_advance'] = $sodu2;
                }
                $data3->save();
                $products3->save();
                $history3 = new Import_histories();
                $history['id_invoice'] = $data3->id;
                $history3['thanhtoan'] = $data3->ie_the_advance;
                $history3->save();
            }
        }

        return redirect()->back()->with('success', 'Thêm thành công dữ liệu');
    }

    public function edit($id)
    {
        $histories = Import_histories::where('id_invoice','=',$id)->get();
        $invoiceEntered = InvoiceEntered::find($id);
		$suppliere = Supplier::all();
		$products = Product::select('id','pro_name','pro_price','pro_number')->orderByDesc('id')->get();

		return view('admin.invoice_entered.update', compact('suppliere','invoiceEntered','products','histories'));
    }

    public function update(Request $request, $id)
    {
        $update = InvoiceEntered::find($id);
        $update->ie_the_advance = $update->ie_the_advance + $request->ie_the_advance;
        $update->save();
        $history = new Import_histories();
        $history['id_invoice'] = $update->id;
        $history['thanhtoan'] =  $request->ie_the_advance;;
        $history->save();

        return redirect()->back()->with('success', 'Chỉnh sửa thành công dữ liệu');
    }

    public function active($id)
    {
        $menu = Menu::find($id);
        $menu->mn_status = !$menu->mn_status;
        $menu->save();

        return redirect()->back();
    }

    public function hot($id)
    {
        $menu = Menu::find($id);
        $menu->mn_hot = !$menu->mn_hot;
        $menu->save();

        return redirect()->back();
    }

    public function delete($id)
    {
        $invoiceEntered = InvoiceEntered::find($id);
        if ($invoiceEntered) $invoiceEntered->delete();

        return redirect()->back();
    }
}
