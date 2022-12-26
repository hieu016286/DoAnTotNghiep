<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Comments;

class UserCommentController extends Controller
{
    public function __construct()
    {
        $this->middleware('verified');
    }
    public function index()
    {
        $comments = Comments::with('product:id,pro_name,pro_slug')
            ->where('cmt_user_id', get_data_user('web'))
            ->paginate(10);


        $viewData = [
            'comments' => $comments
        ];

        return view('user.comment', $viewData);
    }

    public function delete($id)
    {
        Comments::find($id)->delete($id);
        return redirect()->back();
    }
}
