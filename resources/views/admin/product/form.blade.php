<div class="col-md-12">
    @include('components.int_message')
</div>
<form role="form" action="" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="col-sm-8">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Thông tin cơ bản</h3>
            </div>
            <div class="box-body">
                <div class="form-group {{ $errors->first('pro_name') ? 'has-error' : '' }}">
                    <label for="exampleInputEmail1">Tên Sản Phẩm</label> <b class="col-red" style="color: red">(*)</b></label>
                    <input type="text" class="form-control" name="pro_name" placeholder="Tên sản phẩm ...." autocomplete="off" value="{{ $product->pro_name ?? old('pro_name') }}">
                    @if ($errors->first('pro_name'))
                        <span class="text-danger">{{ $errors->first('pro_name') }}</span>
                    @endif
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="form-group {{ $errors->first('pro_price') ? 'has-error' : '' }}">
                             <label for="exampleInputEmail1">Giá Sản Phẩm</label> <b class="col-red" style="color: red">(*)</b></label>
                             <input type="text" min="0" name="pro_price" value="{{ $product->pro_price ?? old('pro_price') }}" class="form-control" data-type="currency" placeholder="... VNĐ"
                                    oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null">
                             @if ($errors->first('pro_price'))
                                <span class="text-danger">{{ $errors->first('pro_price') }}</span>
                            @endif
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                             <label for="exampleInputEmail1">Giảm Giá</label>
                             <input type="number" min="0" name="pro_sale" value="{{ $product->pro_sale ?? old('pro_sale') }}" class="form-control" data-type="currency" placeholder="... VNĐ"
                                    oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null">
                        </div>
                    </div>
                    <!-- <div class="col-sm-2">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Số lượng</label>
                            <input type="number" name="pro_number_import" value="{{ $product->pro_number_import ?? old('pro_number_import', 0) }}" class="form-control"  placeholder="5">
                        </div>
                    </div> -->
                    
                
{{--                    <div class="col-sm-9">--}}
{{--                        <div class="form-group">--}}
{{--                            <label for="tag">Keyword</label>--}}
{{--                            <select name="keywords[]" class="form-control js-select2-keyword" multiple="">--}}
{{--                                <option value="">__Click__</option>--}}
{{--                                @foreach($keywords as $keyword)--}}
{{--                                    <option value="{{ $keyword->id }}" {{ in_array($keyword->id, $keywordOld ) ? "selected='selected'"  : '' }}>--}}
{{--                                        {{ $keyword->k_name }}</option>--}}
{{--                                @endforeach--}}
{{--                            </select>--}}
{{--                        </div>--}}
{{--                    </div>--}}
                </div>
                <div class="form-group {{ $errors->first('pro_description') ? 'has-error' : '' }}">
                    <label for="exampleInputEmail1">Mô Tả</label> <b class="col-red" style="color: red">(*)</b></label>
                    <textarea name="pro_description" class="form-control" cols="5" rows="2" autocomplete="off" placeholder=".....">{{ $product->pro_description ?? old('pro_description') }}</textarea>
                    @if ($errors->first('pro_description'))
                        <span class="text-danger">{{ $errors->first('pro_description') }}</span>
                    @endif
                </div>

                <div class="form-group {{ $errors->first('pro_category_id') ? 'has-error' : '' }}">
                    <label class="control-label">Danh Mục <b class="col-red" style="color: red">(*)</b></label>
                    <select name="pro_category_id" class="form-control ">
                        <option value="">__Click__</option>
                        @foreach($categories as $category)
                            <option value="{{ $category->id }}" {{ ($product->pro_category_id ?? '') == $category->id || old('pro_category_id') == $category->id ? "selected='selected'" : "" }}>
                                    <?php $str = '' ;for($i = 0; $i < $category->level; $i ++){ echo $str; $str .= '-- '; }?>
                                {{ $category->c_name }}
                            </option>
                        @endforeach
                    </select>
                    @if ($errors->first('pro_category_id'))
                        <span class="text-danger">{{ $errors->first('pro_category_id') }}</span>
                    @endif
                </div>
            </div>
        </div>
        <div class="box box-warning">
            <!-- <div class="box-header with-border">
                <h3 class="box-title">Thuộc tính</h3>
            </div> -->
            <div class="box-body">
                @foreach($attributes as $key => $attribute)
                    <div class="form-group col-sm-3">
                        <h4 style="border-bottom: 1px solid #dedede;padding-bottom: 10px;">{{ $key }}</h4>
                        @foreach($attribute as $item)
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" name="attribute[]" {{ in_array($item['id'], old('attribute') ?? $attributeOld) ? "checked"  : '' }}
                                value="{{ $item['id'] }}"> {{ $item['atb_name'] }}
                            </label>
                         </div>
                         @endforeach
                    </div>
                @endforeach
            </div>
            <hr>
{{--            <div class="box-header with-border">--}}
{{--                <h3 class="box-title">Album ảnh</h3>--}}
{{--            </div>--}}
{{--            <div class="box-body">--}}
{{--                @if (isset($images))--}}
{{--                    <div class="row" style="margin-bottom: 15px;">--}}
{{--                        @foreach($images as $item)--}}
{{--                            <div class="col-sm-2">--}}
{{--                                <a href="{{ route('admin.product.delete_image', $item->id) }}" style="display: block;">--}}
{{--                                    <img src="{{ pare_url_file($item->pi_slug) }}" style="width: 100%;height: auto">--}}
{{--                                </a>--}}
{{--                            </div>--}}
{{--                        @endforeach--}}
{{--                    </div>--}}
{{--                @endif--}}
{{--                 <div class="form-group">--}}
{{--                    <div class="file-loading">--}}
{{--                        <input id="images" type="file" name="file[]" multiple class="file" data-overwrite-initial="false" data-min-file-count="0">--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
        </div>
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Nội dung</h3> <b class="col-red" style="color: red">(*)</b></label>
            </div>
            <div class="box-body">
                <div class="form-group " id="time">
                    <!-- <label for="exampleInputEmail1">Content</label> -->
                    <textarea name="pro_content" id="content" class="form-control textarea" required="" cols="5" rows="2" >{{ old('pro_content') ? old('pro_content') : ($product->pro_content ?? '') }}</textarea>
                    @if ($errors->first('pro_content'))
                        <span class="text-danger">{{ $errors->first('pro_content') }}</span>
                    @endif
                </div>
            </div>
        </div>
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Nội dung cho xem trước</h3>
            </div>
            <div class="box-body">
                <div class="form-group " id="time">
                    <!-- <label for="exampleInputEmail1">Content</label> -->
                    <textarea name="preview" id="contentt" class="form-control textarea" required="" cols="5" rows="2" >{{ old('preview') ? old('preview') : ($product->preview ?? '') }}</textarea>
                    @if ($errors->first('preview'))
                        <span class="text-danger">{{ $errors->first('preview') }}</span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-4">
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">Ảnh</h3>
            </div>
            <div class="box-body block-images">
                <div style="margin-bottom: 10px">
                    <img src="{{ pare_url_file($product->pro_avatar ?? '') ?? '/images/no-image.jpg' }}" onerror="this.onerror=null;this.src='/images/no-image.jpg';" alt="" class="img-thumbnail" style="width: 200px;height: 200px;">
                </div>
                <div style="position:relative;"> <a class="btn btn-primary" href="javascript:;"> Chọn ảnh... <input type="file" style="position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=0);-ms-filter:&quot;progid:DXImageTransform.Microsoft.Alpha(Opacity=0)&quot;;opacity:0;background-color:transparent;color:transparent;" name="pro_avatar" size="40" class="js-upload"> </a> &nbsp; <span class="label label-info" id="upload-file-info"></span> </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12 clearfix">
        <div class="box-footer text-center">
            <a href="{{ route('admin.product.index') }}" class="btn btn-default"><i class="fa fa-arrow-left"></i> Cancel</a>
            <button type="submit" class="btn btn-success"><i class="fa fa-save"></i> {{ isset($product) ? "Cập nhật" : "Thêm mới" }} </button> </div>
    </div>
</form>
<script src="{{  asset('admin/bower_components/jquery/dist/jquery.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('admin/ckeditor/ckeditor.js') }}"></script>
<script type="text/javascript">

    var options = {
        filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
        filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
        filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
        filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
    };

    CKEDITOR.replace('content' ,options);
    CKEDITOR.replace('contentt' ,options);
</script>

