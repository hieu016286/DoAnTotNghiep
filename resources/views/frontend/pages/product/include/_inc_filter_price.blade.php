<ul>
	@for($i = 1; $i <= 6; $i++)
		<li class="{{ Request::get('price') == $i ? "active" : "" }}">
			<a href="{{ request()->fullUrlWithQuery(['price' =>  $i]) }}">
				{{  $i == 6 ? "Lớn hơn 1tr" : "Giá " . number_format($i * 200000,0,',','.')  ." vnđ" }}
			</a>
		</li>
	@endfor
</ul>