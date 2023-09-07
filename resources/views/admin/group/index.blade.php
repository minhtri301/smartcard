@extends('admin.layouts.app')
@section('content')
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h4 class="m-0">Quản lý nhóm người dùng</h4>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <div class="float-sm-right">
                        <button data-toggle="modal" data-target="#new-group-modal" class="btn btn-dark"><i class="far fa-plus-circle"></i> Thêm mới</button>
                    </div>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                    <form action="{{route('groups.index')}}" method="get">
                        <div class="row">     
                            <div class="col-2">
                                <div class="form-group">
                                    <select name="check" class="form-control">
                                        <option value="">Tất cả trạng thái</option>
                                        <option value="2" @if (Request()->check==2) selected @endif>Chưa kích hoạt</option>
                                        <option value="1" @if (Request()->check==1) selected @endif>Đã kích hoạt</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-10">
                                <div class="form-group"> 
                                    <div class="input-group ">
                                    <input type="search" class="form-control" name="key" value="{!! old('key',Request()->key) !!}" placeholder="serach">
                                    <div class="input-group-append" style="margin-left: 10px;">
                                        <button class="btn btn-dark" style="border-radius: 6px;">
                                        <i class="fa fa-search"></i>             
                                        </button>
                                        <a href="{{route('groups.index')}}" class="btn  btn-default" style="margin-left: 10px;"><i class="far fa-undo"></i></a>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
        
                <div class="card card-secondary card-outline">
                    <div class="card-body">
                        @include('flash::message')
                        <form action="" method="POST">
                            @csrf
                            <div class="table-responsive">
                                <table id="example3" class="table table-bordered table-hover dataTable dtr-inline">
                                    <thead>
                                        <tr>
                                            <th width="10px">STT</th>
                                            <th>Tên nhóm</th>
                                            <th>Ngày tạo</th>
                                            <th>Trạng thái</th>
                                            <th width="60">Thao tác</th>
                                        </tr>
                                    </thead>
                                    <tbody>   
                                        @foreach ($data as $item)
                                            <tr>
                                                <td>{{ $loop->index + 1 }}</td>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->created_at->format('d/m/Y')}}</td>
                                                <td>
                                                    @if ($item->status==1)
                                                    <span class="badge badge-pill badge-success">Đã kích hoạt</span>
                                                    @else
                                                    <span class="badge badge-pill badge-danger">Chưa kích hoạt</span>
                                                    @endif                                                  
                                                </td>
                                                <td>
                                                    <a href="javascript:void(0);" title="Chỉnh sửa"  class="btn btn-xs btn-info btn-edit edit-group" data-id="{{$item->id}}" data-href="{{route('groups.edit',$item->id)}}" >
                                                        <i class="fas fa-edit"></i></i>
                                                    </a>
                                                    <a href="javascript:void(0);" class="btn btn-xs btn-danger btn-destroy"
                                                        title="Xóa" data-href="{{route('groups.destroy',$item->id)}}">
                                                        <i class="fas fa-trash"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                            {{-- <div class="btnAdd">
                                <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Bạn có chắc chắn xóa không ?')"><i
                                            class="fa fa-trash-o"></i> Xóa các mục đã chọn
                                </button>
                            </div> --}}
                        </form>
                    </div>
                </div>
            </div>

          
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="modal fade" id="edit-group-modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content" >
                        <div class="modal-header">
                            <span class="modal-title fs-6" id="staticBackdropLabel">CẬP NHẬT NHÓM NGƯỜI DÙNG</span>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                        </div>
                        <form action="" id="formGroupEdit">
                            @csrf
                            <div class="modal-body">
                                <div id="get-group-edit"></div>
                            </div>  
                            <div class="modal-footer" >
                                <button class="btn btn-outline-dark d-inline-flex align-items-center" data-dismiss="modal">
                                    <img src="{{asset('frontend/image/cancel.png')}}" alt="icon">
                                    <span>Hủy</span>
                                </button>
                                <button class="btn btn-dark d-inline-flex align-items-center btn-update-group">
                                    <img src="{{asset('frontend/image/save.png')}}" alt="icon">
                                    <span class="ml-1">Lưu</span>
                                </button>  
                            </div>
                        </form> 
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="modal fade" id="new-group-modal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content" >
                        <div class="modal-header">
                            <span class="modal-title fs-6" id="staticBackdropLabel">THÊM MỚI NHÓM NGƯỜI DÙNG</span>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                        </div>
                        <form action="{{route('groups.store')}}" class="form-add-group" >
                            @csrf
                            <div class="modal-body">
                                @include('admin.ajax.get-modal-new-group')
                            </div>            
                            <div class="modal-footer" >
                                <div class="float-lg-right">
                                    <button class="btn btn-outline-dark d-inline-flex align-items-center" data-dismiss="modal">
                                        <img src="{{asset('frontend/image/cancel.png')}}" alt="icon">
                                        <span>Hủy</span>
                                    </button>
                                    <button class="btn btn-dark d-inline-flex align-items-center btn-add-group">
                                        <img src="{{asset('frontend/image/save.png')}}" alt="icon">
                                        <span class="ml-1 ">Lưu</span>
                                    </button>
                                </div> 
                            </div>
                        </form> 
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

$(document).ready(function() {
    $('.btn-add-group').on('click', function(e){
    e.preventDefault();
        const url = $('.form-add-group').attr('action');
        const data = $('.form-add-group').serialize();
        $.ajax({
            type: 'POST',
            url: url,
            dataType: "json", 
            data: data,
            success: function (data){
                if(data.success == false){
                    $('.errorName').show();
                    $('.errorImage').show();
                    $('.errorLink').show();
                    $('.errorName').html(null);
                    $('.errorImage').html(null);
                    $('.errorLink').html(null);
                    $.each(data.errorMessage, function(filed,item){
                        var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> ' + item + '</span>';
                        if(filed == 'name'){
                            $('.errorName').html(html_error);
                        } 
                        if(filed == 'image'){
                            $('.errorImage').html(html_error);
                        } 
                        if(filed == 'link'){
                            $('.errorLink').html(html_error);
                        } 
                    })
                }else{
                    $('#new-group-modal').modal('hide');
                    Toast.fire({
                        iconColor: '#198754',
                        icon: data.success,
                        title: data.message,
                        customClass: {
                            title: 'cl-green',
                            timerProgressBar: 'bg-green',
                        },
                    })
                    setTimeout(function() {
                    location.reload();
                    }, 1000);
                }
            },
        });
    });
});

$('.edit-group').on('click',function(e){
    e.preventDefault();
    const url = $(this).data("href"); 
    $.ajax({
        type: 'GET', 
        url: url,
        dataType: "json",
        success: function (data) {
            $('#get-group-edit').html(data.html);
            $('#edit-group-modal').modal('show');
        },
    })
})

$('.btn-update-group').on('click', function(e){
    e.preventDefault(); 
    const hrefGroup = $('.hrefGroup').data('href');
    const data = $('#formGroupEdit').serialize();
    $.ajax({
        type: 'PUT', 
        url: hrefGroup, 
        data: data,
        dataType: "json", 
        success: function(data){
            if(data.success == false){
                $('.errorName').html(''); 
                $('.errorImage').html(''); 
                $('.errorLink').html(''); 
                $.each(data.errorMessage, function(filed, item){
                    var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> ' + item + '</span>';
                    if(filed == 'name'){
                        $('.errorName').html(html_error); 
                    }
                    if(filed == 'image'){
                        $('.errorImage').html(html_error); 
                    }
                    if(filed == 'link'){
                        $('.errorLink').html(html_error); 
                    }
                })
            }else{
                $('#edit-group-modal').modal('hide');
                $('#new-group-modal').modal('hide');
                Toast.fire({
                    iconColor: '#198754',
                    icon: data.success,
                    title: data.message,
                    customClass: {
                        title: 'cl-green',
                        timerProgressBar: 'bg-green',
                    },
                });
                setTimeout(function() {
                location.reload();
                }, 1000);
            }
        }
    })
})

</script>
@endsection