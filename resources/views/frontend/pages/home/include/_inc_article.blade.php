@if (config('layouts.pages.home.article') == 1)
	@if (isset($articlesHot) && $articlesHot)
		<section id="box-news">
			<div class="top"><a href="#" class="main-title">Tin tức</a></div>
			<div class="bot">
				@foreach($articlesHot as $item)
					<div class="col">
						<div class="item">
							<div class="item__image">
								<a href="{{ route('get.blog.detail',$item->a_slug.'-'.$item->id) }}"
								   title="{{ $item->a_name }}">
									<img class="lazyload lazy" src="{{  asset('images/preloader.gif') }}"
										 data-src="{{ pare_url_file($item->a_avatar) }}" alt="{{ $item->a_name }}">
								</a>
							</div>
							<div class="item__content">
								<div class="date-time"><i class="fa fa-calendar"></i>
									<span>{{ $item->created_at }}</span></div>
								<h3><a href="{{ route('get.blog.detail',$item->a_slug.'-'.$item->id) }}" class="title"
									   title="{{ $item->a_name }}">{{ $item->a_name }}</a></h3>
								<p class="description"> {{ $item->a_description }}</p>
							</div>
						</div>
					</div>
				@endforeach
			</div>
		</section>
	@endif
@else
	@if (isset($articlesHot) && $articlesHot)
		<section id="box-news" style="margin-bottom: 30px;">
			<div class="top"><a href="#" class="main-title main-title-2">Tin tức</a></div>
			<div class="bot" style="padding: 10px;background-color: white">
				<div class="col-6" style="width: 60%;display: flex">
					<div class="avatar" style="width: 30%">
						<a class="image" style="display: block"
						   href="{{ route('get.blog.detail',$articlesHot[0]->a_slug.'-'.$articlesHot[0]->id) }}"
						   title="{{ $articlesHot[0]->a_name }}">
							<img class="lazyload lazy" style="height: 150px;" src="{{  asset('images/preloader.gif') }}"
								 data-src="{{ pare_url_file($articlesHot[0]->a_avatar) }}"
								 alt="{{ $articlesHot[0]->a_name }}">
						</a>
					</div>
					<div class="info" style="width: 60%;margin-left: 15px;">
						<h3><a href="{{ route('get.blog.detail',$articlesHot[0]->a_slug.'-'.$articlesHot[0]->id) }}"
							   style="font-size: 16px;color: #363636;font-weight: bold;"
							   class="title" title="{{ $articlesHot[0]->a_name }}">{{ $articlesHot[0]->a_name }}</a></h3>
						<div class="date-time" style="font-weight: 600;color: #e50e1d;margin-right: 5px;">
							<i class="fa fa-calendar"></i> <span
									style="color: #707070;font-weight: 400">{{ $articlesHot[0]->created_at }}</span>
						</div>
						<p class="description" style="color: #707070;"> {{ $articlesHot[0]->a_description }}</p>
					</div>
				</div>
				<div class="col-4" style="width: 40%">
					<ul>
						@foreach($articlesHot as $item)
							<li>
								<a href="{{ route('get.blog.detail',$item->a_slug.'-'.$item->id) }}"
								   style="line-height: 20px;margin-bottom: 5px;display: block"
								   title="{{ $item->a_name }}"><i class="fa fa-angle-right"></i> {{ $item->a_name }}</a>
							</li>
						@endforeach

					</ul>
				</div>
			</div>
		</section>
	@endif
@endif