<table class="table table-condensed">
    <tbody>
        <tr>
            <th style="width: 10px">#</th>
            <th>Tên sản phẩm</th>
            <th>Ảnh</th>
            <th>Giá tiền</th>
            <th>Số lượng</th>
            <th>Tổng tiền</th>
            <th>Hành động</th>
        </tr>
        @foreach($orders as $item)
            <tr>
                <td>#{{ $item->id }}.</td>
                <td><a href="">{{ $item->product->pro_name ?? "[N\A]" }}</a></td>
                <td>
                    <img alt="" style="width: 60px;height: 80px" src="{{ pare_url_file($item->product->pro_avatar ?? "") }}" class="lazyload">
                </td>
                <td>{{ number_format($item->od_price,0,',','.') }} đ</td>
                <td>{{ $item->od_qty }}</td>
                <td>{{ number_format($item->od_price * $item->od_qty,0,',','.') }} đ</td>
                <td>
                    <a href="{{ route('ajax_admin.transaction.order_item', $item->id) }}" class="btn btn-xs btn-danger js-delete-order-item">Xóa</a>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>