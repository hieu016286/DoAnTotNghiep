@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý sản phẩm</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.product.index') }}"> Sản phẩm</a></li>
            <li class="active"> Danh sách </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
               <div class="box-title">
                    <form class="form-inline">
                        <input type="text" class="form-control" value="{{ Request::get('id') }}" name="id" placeholder="ID">
                        <input type="text" class="form-control" value="{{ Request::get('name') }}" name="name" placeholder="Name ...">
                        <select name="category" class="form-control" >
                            <option value="0">Danh mục</option>
                            @foreach($categories as $item)
                                <option value="{{ $item->id }}" {{ Request::get('category') == $item->id ? "selected='selected'" : "" }}>{{  $item->c_name }}</option>
                            @endforeach
                        </select>

                        <button type="submit" class="btn btn-success"><i class="fa fa-search"></i> Tìm kiếm</button>
                        {{--<button type="submit" name="export" value="true" class="btn btn-info">--}}
                            {{--<i class="fa fa-save"></i> Xuất file--}}
                        {{--</button>--}}
                        <a href="{{ route('admin.product.create') }}" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a>
                    </form>
                </div>
                <div class="box-body">
                   <div class="col-md-12">
                       <p> Tổng số lượng sản phẩm <b>{{ $sumNumber }}</b></p>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">STT</th>
                                    <th style="width: 10px">ID</th>
                                    <th>Tên</th>
                                    <th>Danh mục</th>
                                    <th>Ảnh</th>
                                    <th>Số lượng</th>
                                    <th>Giá thành</th>
                                    <th>Hot</th>
                                    <th>Tình trạng</th>
                                    <th>Hành động</th>
                                </tr>
                                
                            </tbody>
                            @if (isset($products))
                                    @foreach($products as $key => $product)
                                        <tr>
                                            <td>{{ (($products->currentPage() - 1) * $products->perPage()) + ( $key + 1)  }}</td>
                                            <td>{{ $product->id }}</td>
                                            <td>
                                                <a href="{{ route('get.product.detail',$product->pro_slug . '-'.$product->id ) }}" target="_blank">{{ $product->pro_name }}</a>
                                            </td>
                                            <td>
                                                <span class="label label-success">{{ $product->category->c_name ?? "[N\A]" }}</span>
                                            </td>
                                            <td>
                                                <img src="{{ pare_url_file($product->pro_avatar) }}" style="width: 80px;height: 100px">
                                            </td>
                                            <td>
                                                <ul style="margin-left: 0;padding-left: 0">
                                                    <li>Số lượng nhập <b>{{ $product->pro_number_import }}</b></li>
                                                    <li>
                                                        @if ($product->pro_number <= 0)
                                                            <span class="text-danger">Còn lại: <b>Hết hàng</b></span>
                                                        @else
                                                            <span class="text-info">Còn lại:  <b>{{ $product->pro_number }}</b></span>
                                                        @endif
                                                    </li>
                                                </ul>

                                            </td>
                                            <td>
                                                @if ($product->pro_sale)
                                                    <span style="text-decoration: line-through;">{{ number_format($product->pro_price,0,',','.') }} vnđ</span><br>
                                                    <!-- @php 
                                                        $price = ((100 - $product->pro_sale) * $product->pro_price)  /  100 ;
                                                    @endphp -->
                                                    <span>{{ number_format(($product->pro_price-$product->pro_sale),0,',','.') }} vnđ</span>
                                                @else 
                                                    {{ number_format($product->pro_price,0,',','.') }} vnđ
                                                @endif
                                                
                                            </td>
                                            <td>
                                                @if ($product->pro_hot == 1)
                                                    <a href="{{ route('admin.product.hot', $product->id) }}" class="label label-info">Có</a>
                                                @else 
                                                    <a href="{{ route('admin.product.hot', $product->id) }}" class="label label-default">Không</a>
                                                @endif
                                            </td>
                                            <td>
                                                @if ($product->pro_active == 1)
                                                    <a href="{{ route('admin.product.active', $product->id) }}" class="label label-info">Hoạt động</a>
                                                @else 
                                                    <a href="{{ route('admin.product.active', $product->id) }}" class="label label-default">Ẩn</a>
                                                @endif
                                            </td>

                                            <td style="width: 160px;">
                                                <a href="{{ route('admin.product.update', $product->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a>
                                                <a href="{{  route('admin.product.delete', $product->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xóa</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {!! $products->appends($query)->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
        </div>
    </section>
    <!-- /.content -->
@stop