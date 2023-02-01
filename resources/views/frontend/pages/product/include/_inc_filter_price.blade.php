<ul>
	@for($i = 1; $i <= 6; $i++)
		<li class="{{ Request::get('price') == $i ? "active" : "" }}">
			<a href="{{ request()->fullUrlWithQuery(['price' =>  $i]) }}">
				{{  $i == 6 ? "Giá > 1tr VNĐ" : "Giá <= " . number_format($i * 200000,0,',','.')  ." VNĐ" }}
			</a>
		</li>
	@endfor
</ul>