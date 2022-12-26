@extends('layouts.app_test')
@section('content')
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>Update </h1>
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
								<input type="text" name="name" value="{{ $video->name ??  old('name') }}" class="form-control" placeholder="Tên phim">
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
