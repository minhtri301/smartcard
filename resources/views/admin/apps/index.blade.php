@extends('admin.layouts.app')
@section('content')
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h4 class="m-0">Quản lý ứng dụng</h4>
                </div>
                <div class="col-sm-6">
                    
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-7">
                <form action="{{route('apps.index')}}" method="get">
                    <div class="row">     
                        <div class="col-12">
                            <div class="form-group"> 
                                <div class="input-group ">
                                <input type="search" class="form-control" name="key" value="{{old('key',Request()->key)}}" placeholder="search">
                                <div class="input-group-append" style="margin-left: 10px;">
                                    <button class="btn btn-dark" style="border-radius: 6px;">
                                    <i class="fa fa-search"></i>             
                                    </button>
                                    <a href="{{route('apps.index')}}" style="margin-left: 10px;" class="btn btn-default"><i class="far fa-undo"></i></a>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-xl-8">
                <div class="card card-secondary card-outline">
                    <div class="card-header">
                        <h3 class="card-title">Danh sách</h3>
                    </div>
                    <div class="card-body">
                        @include('flash::message')
                        <div class="table-responsive">
                            <table id="example3" class="table table-bordered table-hover dataTable dtr-inline">
                                <thead>
                                    <tr>
                                        <th {{$id=0}} width="10px">STT</th>
                                        <th>Tên ứng dụng</th>
                                        <th>Hình ảnh</th>
                                        {{-- <th>Tình trạng</th> --}}
                                        <th width="70">Thao tác</th>
                                    </tr>
                                </thead>
                                <tbody>   
                                    @foreach ($data as $item)
                                        <tr>
                                            <td>{{$id+=1}}</td>
                                            <td>{{$item->name}}</td>
                                            <td><img src="{{asset($item->image ? $item->image : __NO_IMAGE_DEFAULT__)}}" alt="icon" width="36"></td>
                                            {{-- <td>
                                                @if (!empty($item->customericon->count() > 0))
                                                <button type="button" class="btn btn-primary position-relative" style="padding: 0px 7px;background-color: #8795a5;">
                                                    hoạt động
                                                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" style="top:-8px">
                                                        {{$item->customericon->count()}}     
                                                    </span>
                                                @else
                                                <button type="button" class="btn  position-relative" style="padding: 0px 7px;background-color: #ff9898;">chưa sử dụng</button>
                                                @endif
                                            </td> --}}
                                            <td class="text-center">
                                                <a href="javascript:void(0);" title="Chỉnh sửa"  class="btn btn-xs btn-info btn-edit edit-app" data-href="{{route('apps.edit',$item->id)}}" >
                                                    <i class="fas fa-edit"></i></i>
                                                </a>
                                                <a href="javascript:void(0);" class="btn btn-xs btn-danger btn-destroy"
                                                    data-href="{{ route('apps.destroy', $item->id) }}"
                                                    data-toggle="modal" data-target="#delete-modal" title="Xóa">
                                                    <i class="fas fa-trash"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-12 col-xl-4">
                <div class="card card-secondary card-outline">
                    <div class="card-header">
                        <h3 class="card-title">Thêm ứng dụng</h3>
                    </div>
                    <form action="{{route('apps.store')}}" method="POST">
                        @csrf
                        <div class="card-body">
                            <div class="form-group" >
                                <label for="">Tên ứng dụng <span class="text-danger">*</span></label>
                                <div class="input-group"  data-target-input="nearest">
                                    <input type="text" class="form-control name" name="name" value="{{old('name')}}" placeholder="Nhập tên" required>
                                </div>
                                @error('name')
                                    <span class="fr-error d-block mt-2 text-danger"><i class="fas fa-exclamation-circle"></i> {{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group" >
                                <label for="">Loại: <span class="text-danger">*</span></label>
                                    <select name="type" class="form-control">
                                        <option value="link">Liên kết</option>
                                        <option value="phone">Số điện thoại</option>
                                        <option value="bank">Số tài khoản</option>
                                    </select>
                            </div>
                            <div class="form-group" >
                                <label for="">Hình ảnh <small>Kích thước hình ảnh ( 72 x 72 )</small> </label>
                                    <div class="image">
                                        <div class="image__thumbnail app-image-icon" >
                                            <img src="{{old('image',@$image) ? old('image',@$image) : __NO_IMAGE_DEFAULT__}}" 
                                                data-init="{{ __NO_IMAGE_DEFAULT__ }}">
                                            <a href="javascript:void(0)" class="image__delete" 
                                                onclick="urlFileDelete(this)">
                                                <i class="fa fa-times"></i></a>
                                                <input type="hidden" name="image" value="{{old('image')}}" id="lat-span" />
                                            <div class="image__button" onclick="fileSelect(this)"></div>
                                        </div>
                                    </div>
                                    @error('image') <span class="text-danger error">{{ $message }}</span>@enderror
                            </div>
                            <div class="form-group text-center" style="margin-bottom: 0rem;" >
                                <button type="submit" class="btn btn-dark" style="width:100px;">
                                    <i class="fa fa-save"></i> Lưu lại</button>
                            </div>        
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="modal fade" id="edit-app-modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content" >
                        <div class="modal-header">
                            <span class="modal-title fs-6" id="staticBackdropLabel">CẬP NHẬT ỨNG DỤNG</span>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                        </div>
                        <div id="get_add_edit">
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
	</div>
    
    @endsection
@section('page_css')
<style>
#example1 > tbody > tr > td {
    vertical-align: middle;
}
</style>
@endsection

@section('page_scripts')
<script type="text/javascript">
$('.edit-app').on('click', function(e){
    e.preventDefault();
    const url = $(this).data("href");
    $.ajax({
        type: 'GET', 
        url: url, 
        dataType: "json", 
        success: function (data){
            console.log(data.html);
            $('#get_add_edit').html(data.html);
            $('#edit-app-modal').modal('show');
        }
    })
})
</script>

@endsection