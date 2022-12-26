@extends('layouts.app_test')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý episode</h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
{{--                <div class="box-header">--}}
{{--                    <h3 class="box-title"><a href="{{ route('test.embed.create') }}" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a></h3>--}}
{{--               </div>--}}
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">ID</th>
                                    <th>ID video</th>
                                    <th>Name video</th>
                                    <th>Link</th>
                                    <th>Server name</th>
                                    <th>Action</th>
                                </tr>
                            </tbody>
                            @if (isset($episode))
                                @foreach($episode as $item)
                                    <tr>
                                        <td>{{ $item->id }}</td>
                                        <td>{{ $item->video_id }}</td>
                                        <td>{{ $item->video->name ?? "[N\A]" }}</td>
                                        <td>
                                            <input type="text" class="form-control" disabled value="{{ $item->link }}">
                                        </td>
                                        <td>
                                            <input type="text" class="form-control" disabled value="{{ $item->server }}">
                                        </td>
                                        <td>
                                            <a href="{{ route('test.embed.delete', $item->id) }}" class="btn btn-xs btn-danger">Delete</a>
{{--                                            <a href="" class="btn btn-xs btn-info">Edit</a>--}}
                                        </td>
                                    </tr>
                                @endforeach
                            @endif

                        </table>
                    </div>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop