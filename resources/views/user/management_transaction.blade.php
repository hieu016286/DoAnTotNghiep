@extends('layouts.app_master_user')
@section('css')
    <link rel="stylesheet" href="{{ asset('css/user.min.css') }}">
    <style>


    </style>
@stop
@section('content')
    <section>
        <div class="title">Lịch sử biến động số dư</div>
        <div class="content">
            <table class="table">
                <thead>
                    <tr>
                        <th >#</th>
                        <th >Mã GD</th>
                        <th style="width: 15%">Biến động</th>
                        <th class="text-center">Tổng tiền</th>
                        <th class="text-center">Thời gian</th>
                        <th class="text-center">Trạng thái</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($payHistories as $pay)
                        <tr>
                            <th scope="row">#{{ $pay->id }}</th>
                            <th>{{ $pay->ph_code }}</th>
                            @if ($pay->ph_credit)
                                <th class="text-center">
                                    <span class="manage-money">
                                        <i class="fa fa-long-arrow-up"></i>{{ number_format($pay->ph_credit,0,',','.') }} <sup>đ</sup>
                                    </span>
                                </th>
                            @else
                                <th class="text-center">
                                    <span class="manage-money">
                                        <i class="fa fa-long-arrow-down"></i>{{ number_format($pay->ph_debit,0,',','.') }} <sup>đ</sup>
                                    </span>
                                </th>
                            @endif
                            <th>
                                {{ number_format($pay->ph_balance,0,',','.') }} đ
                            </th>
                            <th>{{  $pay->created_at }}</th>
                            <th>
                                <span><i class="fa fa-circle"></i> Thành công</span>
                            </th>
                        </tr>
                    @endforeach
                </tbody>
            </table>

        </div>
    </section>
@stop
