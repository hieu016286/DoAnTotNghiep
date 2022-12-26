@extends('layouts.app_master_user')
@section('css')
    <style>
        <?php $style = file_get_contents('css/user.min.css');echo $style;?>
        .ratings span i {
                color: #eff0f5;
            }
            .ratings span.active i {
                color: #faca51;
            }
    </style>
@stop
@section('content')
    <section>
        <div class="title">Danh sách đánh giá của bạn</div>
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col" style="width: 50px">STT</th>
                        <th scope="col" style="text-align: left;">Name</th>
                        <th scope="col" style="text-align: center;">Rating</th>
                        <th scope="col" style="text-align: center;">Time</th>
                        <th scope="col" style="text-align: center;">Action</th>
                    </tr>
                    </thead>

                    @if (isset($ratings))
                    <tbody>
                        @foreach($ratings as $key => $rating)
                            <tr>
                                <td style="text-align: center;">{{ (($ratings->currentPage() - 1) * $ratings->perPage()) + ( $key + 1)  }}</td>
                                <td style="width: 30%;text-align: left">{{ $rating->product->pro_name ?? "[N\A]" }}</td>
                                <td style="text-align: center;">
                                    <div class="ratings">
                                        @for($i = 1 ; $i <= 5 ; $i ++)
                                            <span class="{{  $i <= $rating->r_number ? 'active' : '' }}"><i class="fa fa-star"></i></span>
                                        @endfor
                                    </div>
                                </td>
                                <td style="text-align: center;">{{ $rating->created_at }}</td>
                                <td style="text-align: center;">
                                    <a href="{{  route('get.user.rating.delete', $rating->id) }}" class="btn btn-xs label-danger js-delete-confirm"><i class="fa fa-trash"></i> Delete</a>
                                </td>
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
        <div style="display: block;">
            {!! $ratings->appends($query ?? [])->links() !!}
        </div>
    </section>
@stop

@section('script')
    
@stop
