@extends('admin.layouts.app')
@section('controller', $data->name_page)
@section('controller_route', route('pages.list') )
@section('action','Cấu hình')
@section('content')
<div class="container-fluid">
    <div class="card card-secondary card-outline">
        <div class="card-body">
            @include('flash::message')
            <form action="{{ route('pages.build.post') }}" method="POST">
                @csrf
                <input name="type" value="{{ $data->type }}" type="hidden">

                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label for="">Trang</label>
                            <input type="text" class="form-control" value="{{ $data->name_page }}" disabled="">

                            @if (\Route::has($data->route))
                            <div class="mt-2">
                                <a href="{{ route($data->route) }}" target="_blank">
                                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>
                                    Link: {{ route($data->route) }}
                                </a>
                            </div>
                            @endif
                        </div>

                    </div>
                </div>

                <ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link active" id="setting-tab" data-toggle="pill" href="#setting" role="tab"
                            aria-controls="setting" aria-selected="true">Nội dung trang</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="seo-tab" data-toggle="pill" href="#seo" role="tab"
                            aria-controls="seo" aria-selected="false">Cấu hình trang</a>
                    </li>
                </ul>
                <div class="tab-content" id="custom-tabs-three-tabContent">
                    <div class="tab-pane fade show active" id="setting" role="tabpanel" aria-labelledby="setting-tab">
                        <div class="row mt-2">
                            <div class="col-md-12">
                                <div class="repeater" id="repeater">
                                    <table class="table table-bordered page-table">
                                        <?php if(!empty($data->content)){
                                            $contents = json_decode($data->content);
                                        } ?>
                                        <tbody id="sortable">
                                            <tr>
                                                <td>
                                                    <h5 class="title-kh">Khối header</h5>
                                                    <div class="row align-items-center">
                                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                                            <div class="text-center">
                                                                <label>Hình ảnh nền khối</label>
                                                                <div class="image text-center">
                                                                    <div class="image__thumbnail banner banner-header" >
                                                                        <img src="{{ @$contents->header->image ?  url('/').@$contents->header->image : __NO_IMAGE_DEFAULT__ }}"
                                                                            data-init="{{ __NO_IMAGE_DEFAULT__ }}">
                                                                        <a href="javascript:void(0)" class="image__delete" onclick="urlFileDelete(this)">
                                                                            <i class="fa fa-times"></i>
                                                                        </a>
                                                                        <input type="hidden" value="{{ @$contents->header->image }}" name="content[header][image]" />
                                                                        <div class="image__button" onclick="fileSelect(this)">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4 col-md-4 offset-md-1 col-sm-12">
                                                            <div>
                                                                <div class="form-group">
                                                                    <label for="">Tiêu đề (h1)</label>
                                                                    <input class="form-control" type="text" name="content[header][title1]" value="{{ @$contents->header->title1 }}">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="">Tiêu đề (h2)</label>
                                                                    <input class="form-control" type="text" name="content[header][title2]" value="{{ @$contents->header->title2 }}">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="">Tiêu đề (h2)</label>
                                                                    <input class="form-control" type="text" name="content[header][title3]" value="{{ @$contents->header->title3 }}">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="">Link</label>
                                                                    <input class="form-control" type="text" name="content[header][link]" value="{{ @$contents->header->link }}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <h5 class="title-kh">Khối giới thiệu</h5>
                                                    <div class="row align-items-center">
                                                      
                                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                                            <div class="image text-center">
                                                                <label>Hình ảnh nền khối</label>
                                                                <div class="image text-center">
                                                                    <div class="image__thumbnail banner banner-header">
                                                                        <img src="{{ @$contents->about->image ?  url('/').@$contents->about->image : __NO_IMAGE_DEFAULT__ }}"
                                                                        data-init="{{ __NO_IMAGE_DEFAULT__ }}">
                                                                        <a href="javascript:void(0)" class="image__delete" onclick="urlFileDelete(this)">
                                                                            <i class="fa fa-times"></i>
                                                                        </a>
                                                                        <input type="hidden" value="{{ @$contents->about->image }}" name="content[about][image]" />
                                                                        <div class="image__button" onclick="fileSelect(this)">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-6 col-md-6 col-sm-12">
                                                            <div>
                                                                <div class="form-group">
                                                                    <label for="">Tiêu đề (h1)</label>
                                                                    <input class="form-control" type="text" name="content[about][title]" value="{{ @$contents->about->title }}">
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="">Nội dung</label>
                                                                    <textarea class="form-control" name="content[about][text]" id="" cols="30" rows="5">{{ @$contents->about->text }}</textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h5 class="title-kh">Khối tính năng</h5>
                                                    <div class="repeater" id="repeater">
                                                        <table class="table table-bordered page-table">
                                                            <tbody class="step-group" id="sortable">
                                                                @if(!empty(@$contents->feature))
                                                                    @foreach (@$contents->feature as $key => $value)
                                                                        @include('admin.repeater.row-feature')
                                                                    @endforeach
                                                                @endif
                                                            </tbody>
                                                        </table>
                                                        <div class="text-right" style="margin-bottom: 30px">
                                                            <button class="btn btn-sm btn-dark" 
                                                                onclick="repeater(event,this,'{{ route('get.layout') }}','.index', 'feature', '.feature')">Thêm tính năng
                                                            </button>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <h5 class="title-kh">Khối sản phẩm</h5>
                                                    <div class="repeater" id="repeater">
                                                        <table class="table table-bordered page-table">
                                                            <tbody class="step-group" id="sortable">
                                                                @if(!empty(@$contents->product))
                                                                    @foreach (@$contents->product as $key => $value)
                                                                        @include('admin.repeater.row-product')
                                                                    @endforeach
                                                                @endif
                                                            </tbody>
                                                        </table>
                                                        <div class="text-right" style="margin-bottom: 30px">
                                                            <button class="btn btn-sm btn-dark" 
                                                                onclick="repeater(event,this,'{{ route('get.layout') }}','.index', 'product', '.product')">Thêm sản phẩm
                                                            </button>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            {{-- <tr>
                                                <td colspan="2">
                                                    <h5 class="title-kh">Khối Đăng ký tư vấn</h5>
                                                    <div class="row align-items-center">
                                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                                            <div class="form-groupp-flex">
                                                                <div class="form-group form-groupp-with">
                                                                    <label for="">Địa chỉ: </label>
                                                                    <textarea class="form-control" type="text" name="content[infor][address]" cols="30" rows="1" >{{ @$contents->infor->address }}</textarea>
                                                                </div>
                                                                <div class="form-group form-groupp-with">
                                                                    <label for="">Email: </label>
                                                                    <input class="form-control" name="content[infor][email]" id="" value="{{ @$contents->infor->email }}">
                                                                </div>
                                                                <div class="form-group form-groupp-with">
                                                                    <label for="">Số điện thoại: </label>
                                                                    <input class="form-control" name="content[infor][phone]" id="" value="{{ @$contents->infor->phone }}">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr> --}}
                                            <tr>
                                                <td>
                                                    <h5 class="title-kh">Khối đánh giá khách hàng</h5>
                                                    <div class="repeater" id="repeater">
                                                        <table class="table table-bordered page-table">
                                                            <tbody class="step-group" id="sortable">
                                                                @if(!empty(@$contents->previews))
                                                                    @foreach (@$contents->previews as $key => $value)
                                                                        @include('admin.repeater.row-previews')
                                                                    @endforeach
                                                                @endif
                                                            </tbody>
                                                        </table>
                                                        <div class="text-right" style="margin-bottom: 30px">
                                                            <button class="btn btn-sm btn-dark" 
                                                                onclick="repeater(event,this,'{{ route('get.layout') }}','.index', 'previews', '.previews')">Thêm đánh giá
                                                            </button>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>    
                        </div>
                    </div>
                    <div class="tab-pane fade" id="seo" role="tabpanel" aria-labelledby="seo-tab">
                        <div class="row mt-4">
                            <div class="col-sm-2">
                                <div class="form-group">
                                    <label>Hình ảnh</label>
                                    <div class="image text-center">
                                        <div class="image__thumbnail">
                                            <img src="{{ $data->image ?  url('/').$data->image : __NO_IMAGE_DEFAULT__ }}"
                                                data-init="{{ __NO_IMAGE_DEFAULT__ }}">
                                            <a href="javascript:void(0)" class="image__delete"
                                                onclick="urlFileDelete(this)">
                                                <i class="fa fa-times"></i></a>
                                            <input type="hidden" value="{{ @$data->image }}" name="image" />
                                            <div class="image__button" onclick="fileSelect(this)"><i
                                                    class="fa fa-upload"></i> Upload</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-10">
                                <div class="form-group">
                                    <label for="">Tiêu đề trang</label>
                                    <input type="text" name="meta_title" class="form-control"
                                        value="{{ @$data->meta_title }}">
                                </div>
                                <div class="form-group">
                                    <label for="">Mô tả trang</label>
                                    <textarea name="meta_description" class="form-control"
                                        rows="5">{!! @$data->meta_description !!}</textarea>
                                </div>
                                <div class="form-group">
                                    <label for="">Từ khóa</label>
                                    <input type="text" name="meta_keyword" class="form-control"
                                        value="{!! @$data->meta_keyword !!}">
                                </div>

                                <div class="form-group">
                                    <label for="">Schema</label>
                                    <textarea class="form-control" name="meta_schema" rows="14">{!! old('meta_schema', isset($data->meta_schema) ? $data->meta_schema : null) !!}</textarea>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-dark">Lưu lại</button>
            </form>
        </div>
    </div>
</div>
@stop
@section('page_scripts')
	<script>
		CKEDITOR.replace('content[about][text]', {
			height: 400,
		})
	</script>
	
@endsection