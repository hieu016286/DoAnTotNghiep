<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\User;

class AdminUserController extends Controller
{
    public function index()
    {
        $users = User::paginate(10);

        $viewData = [
            'users' => $users
        ];

        return view('admin.user.index', $viewData);
    }

    public function transaction(Request $request, $id)
	{
		if ($request->ajax())
		{
			$transactions = Transaction::where([
				'tst_user_id' => $id,
			])->whereIn('tst_status',[1,2])
				->orderByDesc('id')
				->paginate(10);

			$view = view('admin.user.transaction', compact('transactions'))->render();

			return response()->json(['html' => $view]);
		}
	}

    public function delete($id)
    {
        $user = User::find($id);
        if ($user) $user->delete();

        return redirect()->back();
    }
}
