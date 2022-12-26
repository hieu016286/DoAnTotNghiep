@extends('layouts.app_test')
@section('content')
	<style>
		.pagination a.active { color: red}
	</style>
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>{{ $video->name }}</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<!-- Default box -->
		<div class="box">
			<div class="box-header with-border">
				<div class="box-body">
					@if ($episodeFirst)
						<p>{{ $episodeFirst->link }}</p>
						<div>
							<iframe src="{{ $episodeFirst->link ?? "" }}" frameborder="0" style="width: 100%" height="600" allowfullscreen></iframe>
						</div>
					@endif
					<div>
						<ul class="pagination">
							@foreach($episode as $key => $item)
								<li>
									<a href="{{ request()->fullUrlWithQuery(['tap' => $item->id]) }}" class="{{ Request::get('tap') == $item->id ? "active" : "" }}">
										{{ ($key + 1) }}
									</a>
								</li>
							@endforeach
						</ul>
					</div>
				</div>
			</div>
			<!-- /.box -->
		</div>
	</section>
	<!-- /.content -->
@stop