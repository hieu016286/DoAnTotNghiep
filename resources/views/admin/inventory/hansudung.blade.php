@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Hạn sử dụng</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.invoice_entered.index') }}"> NCC</a></li>
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
                                    <th style="width: 10px">STT</th>
                                    <th style="width: 10px">ID</th>
                                    <th>Nhà CC</th>
                                    <th>Sản phẩm</th>
                                    <th>Số tiền</th>
                                    <th>Số lượng</th>
                                    <th>Tổng tiền</th>
                                    <th>Ngày nhập hàng</th>
                                    <th>Ngày sản xuất</th>
                                    <th>Hạn sử dụng</th>
                                    <th>Tình trạng</th>
                                </tr>
                            </tbody>
                            @if (isset($invoiceEntered))
                                    @foreach($invoiceEntered as  $key => $item)
                                        @if(((strtotime($item->Hansudung)-strtotime($datenow))/60/60/24) >0 && ((strtotime($item->Hansudung)-strtotime($datenow))/60/60/24)<=30)
                                        <tr style="background-color:#c10606; color: white">
                                        @endif
                                        @if(((strtotime($item->Hansudung)-strtotime($datenow))/60/60/24)<=0)
                                        <tr style="background-color:#656363; color: white">
                                        @endif
                                            <td>{{ ($key + 1) }}</td>
                                            <td>{{ $item->id }}</td>
                                            <td>{{ $item->suppliere->sl_name ?? "[NA]" }}</td>
                                            <td>
                                            @if(((strtotime($item->Hansudung)-strtotime($datenow))/60/60/24)>30)
                                            <a  target="_blank"
                                                        href="{{ route('get.product.detail',($item->product->pro_slug ?? '') .'-'.$item->ie_product_id) }}">
                                                    {{ $item->product->pro_name ?? "[N\A]"}}</a>
                                            @endif
                                                <a style="color:white" target="_blank"
                                                        href="{{ route('get.product.detail',($item->product->pro_slug ?? '') .'-'.$item->ie_product_id) }}">
                                                    {{ $item->product->pro_name ?? "[N\A]"}}</a>
                                            </td>
                                            <td>{{ number_format($item->ie_money,0,',','.') }} VNĐ</td>
                                            <td>{{ number_format($item->ie_number)}}</td>
                                            <td>{{ number_format($item->ie_total_money,0,',','.') }} VNĐ</td>
                                            <td>{{date('d-m-Y',strtotime($item->created_at))}}</td>
                                            <td>{{date('d-m-Y',strtotime($item->NgaySX))}}</td>
                                            <td>{{date('d-m-Y',strtotime($item->Hansudung))}}</td>
                                            @if(((strtotime($item->Hansudung)-strtotime($datenow))/60/60/24) >0 && ((strtotime($item->Hansudung)-strtotime($datenow))/60/60/24)<=30)
                                            <td><b>Sắp hết hạn - còn: {{(strtotime($item->Hansudung)-strtotime($datenow))/60/60/24}} ngày</b></td>
                                            @endif
                                            @if((strtotime($item->Hansudung))< strtotime($datenow))
                                            <td><b>Đã hết hạn</b></td>
                                            @endif
                                            @if(((strtotime($item->Hansudung)-strtotime($datenow))/60/60/24)>30)
                                            <td style="color: green"><b>Tốt</b></td>
                                            @endif
                                        </tr>
                                    @endforeach
                                @endif
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
