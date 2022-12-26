@extends('layouts.app_test')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Quản lý video</h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-header">
                    <h3 class="box-title"><a href="{{ route('test.video.create') }}" class="btn btn-primary">Thêm mới <i class="fa fa-plus"></i></a></h3>
               </div>
                <div class="box-body">
                   <div class="col-md-12">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th style="width: 10px">ID</th>
                                    <th>Name</th>
                                    <th>Total episode</th>
                                    <th>Add episode</th>
                                    <th>Action</th>
                                </tr>
                            </tbody>

                            @foreach($video as $item)
                                <tr>
                                    <td>{{ $item->id }}</td>
                                    <td>
                                        <a title="{{ $item->name }}" target="_blank"
                                                href="{{ route('test.video.view', \Str::slug($item->name).'-'.$item->id) }}">
                                            {{ $item->name }}
                                        </a>
                                    </td>
                                    <td>
                                        <span class="label label-info">{{ $item->total }} episode</span>
                                    </td>
                                    <td>
                                        <a href="{{ route('test.video.add.episode', $item->id) }}" class="btn btn-xs btn-primary">Add episode</a>
                                    </td>
                                    <td>
                                        <a href="{{ route('test.video.delete', $item->id) }}" class="btn btn-xs btn-danger">Delete</a>
                                        <a href="{{ route('test.video.update', $item->id) }}" class="btn btn-xs btn-info">Edit</a>
                                    </td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop