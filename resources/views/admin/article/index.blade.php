@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý bài viết</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li><a href="{{  route('admin.article.index') }}"> Bài viết</a></li>
            <li class="active"> Danh sách </li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('admin.article.create') }}" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a></h3>
               </div>
                <div class="box-body">
                   <div class="col-md-12">
                       @include('components.int_message')
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">STT</th>
                                    <th style="width: 10px">ID</th>
                                    <th style="width: 25%">Tên</th>
                                    <th>Danh mục</th>
                                    <th>Ảnh</th>
                                    <th>Hot</th>
                                    <th>Tình trạng</th>
                                    <th>Thời gian tạo</th>
                                    <th>Hành động</th>
                                </tr>

                            </tbody>
                            @if (isset($articles))
                            
                                    @foreach($articles as $key => $article)
                                        <tr>
                                            <td>{{ (($articles->currentPage() - 1) * $articles->perPage()) + ( $key + 1)  }}</td>
                                            <td>{{ $article->id }}</td>
                                            <td>{{ $article->a_name }}</td>
                                            <td>
                                                <span class="label label-success">{{ $article->menu->mn_name ?? "[N\A]" }}</span>
                                            </td>
                                            <td>
                                                <img src="{{ pare_url_file($article->a_avatar) }}" style="width: 80px;height: 80px">
                                            </td>

                                            <td>
                                                @if ($article->a_hot == 1)
                                                    <a href="{{ route('admin.article.hot', $article->id) }}" class="label label-info">Có</a>
                                                @else
                                                    <a href="{{ route('admin.article.hot', $article->id) }}" class="label label-default">Không</a>
                                                @endif
                                            </td>
                                            <td>
                                                @if ($article->a_active == 1)
                                                    <a href="{{ route('admin.article.active', $article->id) }}" class="label label-info">Hoạt động</a>
                                                @else
                                                    <a href="{{ route('admin.article.active', $article->id) }}" class="label label-default">Ẩn</a>
                                                @endif
                                            </td>
                                            <td>{{  $article->created_at }}</td>
                                            <td style="width: 120px">
                                                <a href="{{ route('admin.article.update', $article->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-pencil"></i> Sửa</a>
                                                <a href="{{  route('admin.article.delete', $article->id) }}" class="btn btn-xs btn-danger js-delete-confirm"><i class="fa fa-trash"></i> Xóa</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                        </table>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    {!! $articles->links() !!}
                </div>
                <!-- /.box-footer-->
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
