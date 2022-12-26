<div class="wrapper" id="wrapper" style="max-width: 780px;margin: 20px auto;padding: 5px 10px;">
	<p class="ms" style="text-align: right">Mẫu số: 12000120121</p>
	<h3 style="text-align: center;font-weight: bold">HOÁ ĐƠN BÁN HÀNG</h3>
	<div style="display: flex">
		<div class="col-3" style="width: 33.3333333%;float: left"></div>
		<div class="col-3" style="width: 33.3333333%;float: left;text-align: center">
			<p style="text-align: center;margin: 0">Phú Lưu</p>
		</div>
		<div class="col-3" style="width: 33.3333333%;float: left">
			<p style="margin: 0">Ký hiệu .....</p>
			<p style="margin: 0">Số .....</p>
			<p style="margin: 0">Ngày ... Tháng ... Năm 2020</p>
		</div>
		<div style="clear: both"></div>
	</div>
	<div style="display: flex;justify-content: space-between;margin-bottom: 10px">
		<div style="width: 50%;text-align: left">
			<p style="margin: 0">Đơn vị mua hàng <b>{{ $transaction->tst_name }}</b></p>
			<p style="margin: 0">Mã số thuế ..................</p>
			<p style="margin: 0">Địa chỉ <b>{{ $transaction->tst_address }} </b> STK ............</p>
			<p style="margin: 0">Điện thoại <b>{{ $transaction->tst_phone }}</b></p>
		</div>
		<div style="text-align: left;width: 50%">
			<p style="margin: 0">Đơn vị bán <b>Đồ Án </b></p>
			<p style="margin: 0">Mã số thuế <b>711A25177</b></p>
			<p style="margin: 0">Địa chỉ <b>Hà Nội</b> STK <b>19034889720010</b></p>
			<p style="margin: 0">Điện thoại <b>123456789</b></p>
		</div>
	</div>
	<div class="table-responsive">
		<div class="table table-striped">
			<table style="width: 100%">
				<tr>
					<th style="text-align: center">STT</th>
					<th style="text-align: center">Tên mặt hàng</th>
					<th style="text-align: center">Số tiền</th>
					<th style="text-align: center">Số lượng</th>
					<th style="text-align: center">Thành tiền</th>
				</tr>
				@foreach($orders as $key => $order)
					<tr>
						<td style="text-align: center">{{ ($key + 1) }}</td>
						<td style="text-align: center">{{ $order->product->pro_name ?? "[N\A]"  }}</td>
						<td style="text-align: center">{{ number_format($order->od_price,0,',','.') }}VNĐ</td>
						<td style="text-align: center">{{ $order->od_qty }}</td>
						<td style="text-align: center">{{ number_format($order->od_price * $order->od_qty,0,',','.') }}</td>
					</tr>
				@endforeach
			</table>
		</div>
	</div>
	<p style="margin-bottom: 5px;text-align: right">Tổng tiền thanh toán <b>{{ number_format($transaction->tst_total_money,0,',','.') }} vnđ</b></p>
	<div style="">
		<div class="col-5" style="padding-bottom: 100px; width: 50%;float: left;text-align: center">
			<h3 style="margin:0">Người mua hàng</h3>
			<p style="margin: 0"><i>(Ký ghi rõ họ tên)</i></p>
			<span style="margin-top: 50px;display: block"><i>{{ $transaction->tst_name }}</i></span>
		</div>
		<div class="col-5" style="padding-bottom: 100px; width: 50%;float: left;text-align: center">
			<h3 style="margin:0">Người bán</h3>
			<p style="margin: 0"><i>(Ký ghi rõ họ tên)</i></p>
			<span style="margin-top: 50px;display: block"><i>{{ $transaction->tst_name }}</i></span>
		</div>
		<div style="clear: both"></div>
	</div>
</div>