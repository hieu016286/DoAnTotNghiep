@extends('layouts.app_master_admin')
@section('content')
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Thêm mới Slide</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="{{  route('admin.slide.index') }}"> Slide</a></li>
			<li class="active"> Create </li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		@include('components.int_message')
		<div class="box">
			<div class="box-header with-border">
				<div class="box-body">
					<form role="form" action="" method="POST" enctype="multipart/form-data">
						@csrf
						<div class="col-sm-8">
							<div class="form-group {{ $errors->first('sd_title') ? 'has-error' : '' }}">
								<label for="name">Title <span class="text-danger">(*)</span></label>
								<input type="color" class="form-control"  name="color-top" value="#ff0000"><br><br>
							</div>
						</div>
						<div class="col-sm-8">
							<div class="form-group {{ $errors->first('sd_link') ? 'has-error' : '' }}">
								<label for="name">Link <span class="text-danger">(*)</span></label>
								<input type="text" class="form-control" name="sd_link"  placeholder="Link ...">
								@if ($errors->first('sd_link'))
									<span class="text-danger">{{ $errors->first('sd_link') }}</span>
								@endif
							</div>
						</div>
						<div class="col-sm-12">
							<div class="row">
								<div class="col-sm-3">
									<div class="form-group ">
										<label for="name">Target </label>
										<select class="form-control" name="sd_target">
											<option value="1">_blank</option>
											<option value="2">_self</option>
											<option value="3">_parent</option>
											<option value="4">_top</option>
										</select>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="form-group ">
										<label for="name">Sort </label>
										<input type="text" class="form-control" name="sd_sort" value="{{ old('sd_sort',0) }}" placeholder="0">
										@if ($errors->first('sd_sort'))
											<span class="text-danger">{{ $errors->first('sd_sort') }}</span>
										@endif
									</div>
								</div>
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
