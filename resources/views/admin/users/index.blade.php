@extends('admin.layouts.app')
@section('content')
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-12 col-sm-6" style="margin-bottom: 10px;">
                <h4 class="m-0">Quản lý tài khoản quản trị</h4>
            </div>
            <div class="col-12 col-sm-6 text-md-right text-sm-left pr-0">
                <a href="{{route('users.create')}}" class="btn btn-dark"><i class="far fa-plus-circle"></i> Thêm mới</a>  
            </div>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <form action="{{route('users.index')}}" method="GET">
                <div class="row">
                    <div class="col-4 col-sm-3 col-md-2">
                        <div class="form-group">
                            <select name="status" class="form-control">
                            <option value="">Tất cả trạng thái</option>
                            <option value="1" @if(@request()->status==1) selected @endif >Đã kích hoạt</option>
                            <option value="2"  @if(@request()->status==2) selected @endif>Chưa kích hoạt</option>  
                            </select>
                        </div>
                    </div>
                    <div class="col-8 col-sm-9 col-md-8">
                        <div class="form-group">
                            <div class="input-group ">
                                <input type="search" name="keyword" value="{{old('keyword',Request()->keyword)}}" class="form-control" placeholder="Tìm kiếm tên đăng nhập">
                                <div class="input-group-append" style="margin-left: 10px;">
                                    <button type="submit" class="btn btn-dark" style="border-radius: 6px;">
                                    <i class="fa fa-search"></i>
                                    </button>
                                    <a href="{{route('users.index')}}" class="btn btn-default" style="margin-left: 10px;"><i class="far fa-undo"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <div class="card card-secondary card-outline">
                <div class="card-body">
                    @include('flash::message')
                    <div class="table-responsive">
                        <table id="example3" class="table table-bordered table-hover dataTable dtr-inline">
                            <thead>
                                <tr>
                                    <th width="10px"><input type="checkbox" name="chkAll" id="chkAll"></th>
                                    <th width="10px">STT</th>
                                    <th>Tên đăng nhập</th>
                                    <th>Họ và tên</th>
                                    <th>Vai trò</th>
                                    <th>Ngày tạo</th>
                                    <th>Trạng thái</th>
                                    <th width="60">Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $key => $item)
                                    <tr>
                                        <td><input type="checkbox" name="chkItem[]" value="{{$item->id}}"></td>
                                        <td>{{ count($data) - $loop->index }} </td>
                                        <td>{{$item->user_name}} </td>
                                        <td>{{$item->name}} </td>
                                        <td>{{ !empty($item->roles[0]) ? $item->roles[0]->name : NULL }}</td>
                                        <td>{{date('d/m/Y',strtotime($item->date))}}</td>
                                        <td>
                                            @if($item->status==1) 
                                                <span class="badge badge-pill badge-success">Đã kích hoạt</span>
                                            @else
                                                <span class="badge badge-pill badge-danger">Chưa kích hoạt</span>
                                            @endif
                                        </td>
                                        <td>
                                            <a href="{{route('users.edit',$item->id)}}" title="Chỉnh sửa" class="btn btn-xs btn-info btn-edit">
                                                <i class="fas fa-edit"></i></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-xs btn-danger btn-destroy"
                                                    title="Xóa" data-href="{{route('users.destroy',$item->id)}}">
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
        <div class="col-md-6 col-sm-12">
        </div>
    </div>
</div>
@stop
@section('page_css')
<style>
#example1 > tbody > tr > td {
    vertical-align: middle;
}
</style>
@endsection
@section('page_scripts')
<script>
$('.btn-destroy').on('click',function(){
    var href = $(this).data("href");
    $('#form-destroy').attr('action',href);
    $('#delete-modal').modal('show');
})
</script>
@endsection
