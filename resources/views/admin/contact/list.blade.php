@extends('admin.layouts.app')
@section('controller', 'Liên hệ')
@section('controller_route', route('contact.index') )
@section('action','Danh sách')
@section('content')
    <div class="container-fluid">
        <div class="card card-secondary card-outline">
            <div class="card-body">
                @include('flash::message')
                <form action="{!! route('contact.postMultiDel') !!}" method="POST">
                    @csrf
                    <div class="table-responsive">
                        <table id="example1" class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" name="chkAll" id="chkAll"></th>
                                    <th>STT</th>
                                    <th>Tên</th>
                                    <th>Email</th>
                                    <th>SĐT</th>
                                    <th>Địa chỉ</th>
                                    <th>Nội dung</th>
                                    <th>Trạng thái</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($contact as $item)
                                    <tr>
                                        <td><input type="checkbox" name="chkItem[]" value=" {{$item->id}}"></td>
                                        <td>{{ $loop->index + 1 }}</td>
                                        <td>{{ $item->name }}</td>
                                        <td>{{ $item->email }}</td>
                                        <td>{{ $item->phone }}</td>
                                        <td>{{ $item->address }}</span></td>
                                        <td>{{ $item->content }}</td>
                                        <td>
                                        @if ($item->status == 1)
                                            <span class="badge badge-success">Đã xem</span>
                                        @else
                                            <span class="badge badge-warning">Chưa xem</span>
                                        @endif
                                        </td>
                                        <td>
                                            <a href="{{route('contact.edit', $item->id)}}" class="btn btn-xs btn-info btn-view" title="Chi tiết">
                                            <i class="fas fa-eye"></i>
                                            </a>
                                            <a href="javascript:void(0);" class="btn btn-xs btn-danger btn-destroy" 
                                            data-href="{{route('contact.destroy', $item->id)}}" title="Xóa">
                                                <i class="far fa-trash-alt"></i>
                                            </a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="btnAdd">
                        <button type="submit" class="btn btn-danger btn-sm"
                            onclick="return confirm('Bạn có chắc chắn xóa không ?')"><i class="fa fa-trash-o"></i>
                            Xóa mục đã chọn
                        </button>
                    </div>
                </form>
			</div>
		</div>
	</div>
@stop
