@extends('layouts.app_test')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Thêm mới </h1>
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
                            <div class="form-group {{ $errors->first('sl_phone') ? 'has-error' : '' }}">
                                <label for="name">Tên phim <span class="text-danger">(*)</span></label>
                                <input type="text" name="name" {{ isset($video->name) ? 'disabled' : ''}}  value="{{ $video->name ?? old('name') }}" class="form-control" placeholder="Tên phim">
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('sl_phone') ? 'has-error' : '' }}">
                                <label for="name">Link <span class="text-danger">(*)</span></label>
                                <textarea class="form-control" required name="link" cols="10" rows="10" placeholder="embed1">{{ old('link') }}</textarea>
                            </div>
                        </div>

                        <div class="col-sm-8">
                            <div class="box-footer text-center">
                                <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
@stop
