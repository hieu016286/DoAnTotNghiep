@extends('layouts.app_master_admin')
@section('content')
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>Cập nhật đơn nhập hàng</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="{{  route('admin.invoice_entered.index') }}"> Admin</a></li>
    </ol>
</section>
<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <div class="box-body">
                <form role="form" action="" method="POST">
                    @csrf
                    <div class="col-sm-8">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group {{ $errors->first('ie_number') ? 'has-error' : '' }}">
                                    <label for="name">Tổng tiền đã nhập hàng <span class="text-danger">(*)</span></label>
                                    <input type="text" disabled class="form-control" id="total_money" value="{{ number_format($invoiceEntered->ie_total_money ?? 0,0,',','.') }} VNĐ" name="ie_money" placeholder="20.000.000">
                                </div>

                            </div>
                            @if($invoiceEntered->ie_total_money-$invoiceEntered->ie_the_advance==0)
                            <div class="col-md-6" style="margin-top:20px">
                                <h4 style="font-weight: bold;" class="text-success">Bạn đã thanh toán xong đơn hàng!</h4>
                            </div>
                            @endif
                            @if($invoiceEntered->ie_total_money-$invoiceEntered->ie_the_advance!=0)

                            <div class="col-md-6" style="margin-top:20px">
                                <h4>Số tiền còn thiếu: <b style="color:red">{{ number_format($invoiceEntered->ie_total_money-$invoiceEntered->ie_the_advance?? 0,0,',','.')}} vnđ</b></h4>
                            </div>
                            @endif
                        </div>
                    </div>

                    <div class="col-sm-8">
                        <div class="form-group {{ $errors->first('ie_total_money') ? 'has-error' : '' }}">
                            <label for="name">Lịch sử thanh toán <span class="text-danger">(*)</span></label>
                            <ul>
                                @foreach($histories as $his)
                                <li>Số tiền đã thanh toán: <b>{{ number_format($his->thanhtoan?? 0,0,',','.')}} vnđ</b> - Thời gian: <b>{{$his->created_at}}</b></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    @if($invoiceEntered->ie_total_money-$invoiceEntered->ie_the_advance!=0)
                    <div class="col-sm-8">
                        <div class="form-group {{ $errors->first('ie_total_money') ? 'has-error' : '' }}">
                            <label for="name">Thanh toán thêm <span class="text-danger">(*)</span></label>
                            <input type="number" class="form-control" value="0" name="ie_the_advance" placeholder="20000 ...">
                        </div>
                    </div>
                    @endif
                    <div class="col-sm-8">
                        <div class="box-footer text-center">
                            <a href="{{ route('admin.invoice_entered.index') }}" class="btn btn-danger">
                                Quay lại <i class="fa fa-undo"></i></a>
                            <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- /.box -->
</section>
<!-- /.content -->
@stop