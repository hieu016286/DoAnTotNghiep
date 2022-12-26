@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý khách hàng</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.user.index') }}"> Khách hàng</a></li>
            <li class="active"> List </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                   <div class="col-md-12">
                       @include('components.int_message')
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">Stt</th>
                                    <th style="width: 10px">ID</th>
                                    <th>Tên</th>
                                    <th>Email</th>
                                    <th>Điện thoại</th>
                                    <th>Thời gian tạo</th>
                                    <th>Hành động</th>
                                </tr>
                                @if (isset($users))
                                    @foreach($users as $key => $user)
                                        <tr>
                                            <td>{{ ($key + 1) }}</td>
                                            <td>{{ $user->id }}</td>
                                            <td>{{ $user->name }}</td>
                                            <td>{{ $user->email }}</td>
                                            <td>{{ $user->phone }}</td>
                                            <td>{{ $user->created_at }}</td>
                                            <td>
                                                <a href="{{ route('admin.user.transaction', $user->id) }}" class="btn btn-xs btn-primary js-show-transaction"> Nợ cần thu</a>
                                                <a href="{{  route('admin.user.delete', $user->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xóa</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {!! $users->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
    <div class="modal fade" id="modal-transaction" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">Nợ cần thu từ khách hàng</h4>
                </div>
                <div class="modal-body" id="content-transaction">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary pull-right" data-dismiss="modal">Đóng</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
@stop

@section('script')
    <script>
        $(function () {
            $(".js-show-transaction").click(function (event) {
                event.preventDefault();
                let URL = $(this).attr('href');
                $.ajax({
                    url: URL,
                }).done(function( results ) {
                    $("#modal-transaction").modal({show: true});
                    $("#content-transaction").html(results.html)
                });
            })
            $("body").on("click","table .js-success-transaction", function(event){
                let URL = $(this).attr('href');
                let $this = $(this);
                event.preventDefault();
                $.ajax({
                    url: URL,
                }).done(function( results ) {
                    if (results.code)
                    {
                        $this.parents('tr').remove();
                    }
                });
            });
        })
    </script>
@stop