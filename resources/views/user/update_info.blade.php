@extends('layouts.app_master_user')
@section('css')
    <style>
		<?php $style = file_get_contents('css/user.min.css');echo $style;?>
    </style>
@stop
@section('content')
    <section>
        <div class="title">Cập Nhật Thông Tin</div>
        <form action="" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="">Họ Tên :</label>
                <input type="text" name="name" class="form-control" value="{{ Auth::user()->name }}" placeholder="Họ và tên ...">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Email :</label>
                <input type="email" class="form-control" name="email" value="{{ Auth::user()->email }}" placeholder="Email ...">
            </div>
            <div class="form-group">
                <label for="">Số Điện Thoại :</label>
                <input type="number" name="phone" class="form-control" value="{{ Auth::user()->phone }}" placeholder="Số điện thoại ...">
            </div>
            <div class="form-group">
                <label for="">Địa Chỉ :</label>
                <input type="text" name="address" class="form-control" value="{{ Auth::user()->address }}" placeholder="Địa chỉ ...">
            </div>
            <div class="from-group">
                <div class="upload-btn-wrapper">
                    <button class="btn-upload">Upload a file</button>
                    <input type="file" name="avatar" />
                </div>
            </div>
            <br>
            <button type="submit" class="btn btn-blue btn-md">Cập Nhật</button>
        </form>
    </section>
@stop
