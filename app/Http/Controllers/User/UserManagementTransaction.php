<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\SystemPay\PayHistory;
use Illuminate\Http\Request;

class UserManagementTransaction extends Controller
{
    public function index()
    {
        $payHistories = PayHistory::where([
            'ph_user_id' => get_data_user('web')
        ])->orderByDesc('id')
            ->paginate(10);
        $viewData     = [
            'payHistories' => $payHistories
        ];

        return view('user.management_transaction', $viewData);
    }
}
