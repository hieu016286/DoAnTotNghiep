@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Chỉnh sửa thông tin ảnh</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{ route('admin.slide.index') }}"> Thông tin ảnh</a></li>
            <li class="active"> Chỉnh Sửa</li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    @include('components.int_message')
                    <form role="form" action="" method="POST" enctype="multipart/form-data">
                         @csrf
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('sd_title') ? 'has-error' : '' }}">
                                <label for="name">Tiêu Đề <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="{{ old('sd_title') ?? $slide->sd_title }}" name="sd_title"  placeholder="Tiêu đề ...">
                                @if ($errors->first('sd_title'))
                                    <span class="text-danger">{{ $errors->first('sd_title') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('sd_link') ? 'has-error' : '' }}">
                                <label for="name">Đường Dẫn <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" name="sd_link" value="{{ old('sd_link') ?? $slide->sd_link }}"  placeholder="Link ...">
                                @if ($errors->first('sd_link'))
                                    <span class="text-danger">{{ $errors->first('sd_link') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="form-group ">
                                        <label for="name">Vị Trí </label>
                                        <select class="form-control" name="sd_target">
                                            <option value="1" {{ old('sd_target') == 1 || $slide->sd_target == 1 ? "selected='selected'" : "" }}>_blank</option>
                                            <option value="2" {{ old('sd_target') == 2 || $slide->sd_target == 2 ? "selected='selected'" : "" }}>_self</option>
                                            <option value="3" {{ old('sd_target') == 3 || $slide->sd_target == 3 ? "selected='selected'" : "" }}>_parent</option>
                                            <option value="4" {{ old('sd_target') == 4 || $slide->sd_target == 4 ? "selected='selected'" : "" }}>_top</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="form-group ">
                                        <label for="name">Sắp Xếp </label>
                                        <input type="text" class="form-control" name="sd_sort" value="{{ old('sd_sort') ?? $slide->sd_sort }}" placeholder="0">
                                        @if ($errors->first('sd_sort'))
                                            <span class="text-danger">{{ $errors->first('sd_sort') }}</span>
                                        @endif
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-8">

                            <h3 class="box-title">Ảnh Banner</h3>
                            <div class="box-body block-images">
                                <div style="margin-bottom: 10px"> <img src="{{ pare_url_file($slide->sd_image ?? '') ?? '/images/no-image.jpg'}}" onerror="this.onerror=null;this.src='/images/no-image.jpg';" alt="" class="img-thumbnail" style="width: 100%;height: 400px;"> </div>
                                <div style="position:relative;"> <a class="btn btn-primary" href="javascript:;"> Chọn ảnh... <input type="file" style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:&quot;progid:DXImageTransform.Microsoft.Alpha(Opacity=0)&quot;;opacity:0;background-color:transparent;color:transparent;" name="sd_avatar" size="40" class="js-upload"> </a> &nbsp; <span class="label label-info" id="upload-file-info"></span> </div>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="box-footer text-center">
                                <a href="{{ route('admin.slide.index') }}" class="btn btn-danger">
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
