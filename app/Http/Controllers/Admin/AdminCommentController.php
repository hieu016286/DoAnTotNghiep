<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Comments;

class AdminCommentController extends Controller
{
    public function index()
    {
        $comments = Comments::with('user:id,name')->paginate(10);
        $viewData = ['comments' => $comments];

        return view('admin.comment.index', $viewData);
    }

    public function delete($id)
    {
        Comments::find($id)->delete($id);
        return redirect()->back();
    }
}
