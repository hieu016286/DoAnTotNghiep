<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\InvoiceEntered;
use App\Models\Menu;
use App\Models\Product;
use App\Models\Import_histories;
use App\Models\Supplier;
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
        $datenow = date('Y-m-d 00:00:00');
        return view('admin.inventory.hansudung', compact('invoiceEntered','datenow'));
    }

    public function create()
    {
       
    	$suppliere = Supplier::all();
    	$products = Product::select('id','pro_name','pro_price','pro_number')->orderByDesc('id')->get();

        return view('admin.invoice_entered.create', compact('suppliere','products'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'ie_number' => 'min:0',
            'ie_money' => 'min:0',
        ]);
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
        $data1['NgaySX'] = $request->nsx;
        $data1['Hansudung'] = $request->hsd;
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
            $data2['ie_number_sold'] = 0;
            $data2['ie_money'] = $request->ie_money2;
            $data2['ie_status'] = 0;
            $data2['ie_number'] = $request->ie_number2;
            $data2['NgaySX'] = $request->nsx2;
            $data2['Hansudung'] = $request->hsd2;
            if($sodu >= $tongtien) {
                $data2['ie_the_advance'] = $tongtien;
                $sodu2 = $thanhtoan-$tongtien;
            }
            if($sodu < $tongtien) {
                $data2['ie_the_advance'] = $sodu;
                $sodu2 = 0;
            }
            $data2->save();
            $history2 = new Import_histories();
            $history['id_invoice'] = $data2->id;
            $history['thanhtoan'] = $data2->ie_the_advance;
            $history2->save();
            if($checkProduct3 != 'none'){
                $data3 = new InvoiceEntered();
                $data3['created_at'] =  Carbon::now();
                $tongtien = $request->ie_number3 * $request->ie_money3;
                $data3['ie_total_money'] = $tongtien;
                $data3['ie_suppliere'] = $request->ie_suppliere;
                $data3['ie_product_id'] = $request->ie_product_id3;
                $data3['ie_number_sold'] = 0;
                $data3['ie_money'] = $request->ie_money3;
                $data3['ie_status'] = 0;
                $data3['ie_number'] = $request->ie_number3;
                $data3['NgaySX'] = $request->nsx3;
                $data3['Hansudung'] = $request->hsd3;
                if($sodu2 >= $tongtien) {
                    $data3['ie_the_advance'] = $tongtien;
                }
                if($sodu2 < $tongtien) {
                    $data3['ie_the_advance'] = $sodu2;
                }
                $data3->save();
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
