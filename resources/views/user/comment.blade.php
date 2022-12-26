@extends('layouts.app_master_user')
@section('css')
    <style>
        <?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title">Danh sách bình luận của bạn</div>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col" style="width: 50px">STT</th>
                        <th scope="col" style="text-align: left;">Product</th>
                        <th scope="col" style="text-align: center;">Content</th>
                        <th scope="col" style="text-align: center;">Time</th>
                        <th scope="col" style="text-align: center;">Action</th>
                    </tr>
                    </thead>

                    @if (isset($comments))
                    <tbody>
                        @foreach($comments as $key => $comment)
                            <tr>
                                <td style="text-align: center;">{{ (($comments->currentPage() - 1) * $comments->perPage()) + ( $key + 1)  }}</td>
                                <td style="width: 30%;text-align: left">{{ $comment->product->pro_name ?? "[N\A]" }}</td>
                                
                                <td style="text-align: center;">{{ $comment->cmt_content }}</td>
                                <td style="text-align: center;">{{ $comment->created_at }}</td>
                                <td style="text-align: center;">
                                    <a href="{{  route('get.user.comment.delete', $comment->id) }}" class="btn btn-xs label-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                </td>
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
        <div style="display: block;">
            {!! $comments->appends($query ?? [])->links() !!}
        </div>
    </section>
@stop

@section('script')
    
@stop
