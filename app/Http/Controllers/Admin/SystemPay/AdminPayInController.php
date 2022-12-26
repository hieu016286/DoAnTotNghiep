<?php

namespace App\Http\Controllers\Admin\SystemPay;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminRequestPayIn;
use App\Models\SystemPay\PayHistory;
use App\Models\SystemPay\PayIn;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AdminPayInController extends Controller
{
    public function index()
    {
        $payIns = PayIn::with('admin:id,name','user:id,name')
            ->orderByDesc('id')
            ->paginate(10);

        $viewData = [
            'payIns' => $payIns
        ];

        return view('admin.system_pay.pay_in.index', $viewData);
    }

    public function create()
    {
        $users = User::select('id','name','email','phone')
            ->get();

        return view('admin.system_pay.pay_in.create', compact('users'));
    }

    public function store(AdminRequestPayIn $request)
    {
        $data = $request->except('_token');
        $data['pi_status'] = PayIn::STATUS_SUCCESS;
        $data['pi_month']  = date('m');
        $data['pi_year']   = date('Y');
        $data['created_at'] = Carbon::now();

        $data['pi_admin_id']   = get_data_user('admins');

        $id = PayIn::insertGetId($data);

        if ($id)
        {
            $user          = User::find($request->pi_user_id);
            $user->balance += $data['pi_money'];
            $user->save();

            $this->syncPayHistories($data, $id, $user->balance);
        }

        return redirect()->back();
    }

    protected function syncPayHistories($data, $payInId, $balance)
    {
        PayHistory::insert([
            'ph_code'        => 'PAYIN' . $payInId,
            'ph_user_id'     => $data['pi_user_id'],
            'ph_credit'      => $data['pi_money'],
            'ph_balance'     => $balance,
            'ph_status'      => 1,
            'ph_month'       => date('m'),
            'ph_year'        => date('Y'),
            'created_at'     => Carbon::now()
        ]);
    }

    public function edit()
    {
        $users = User::select('id','name','email','phone')
            ->get();
    }

    public function update()
    {

    }
}
