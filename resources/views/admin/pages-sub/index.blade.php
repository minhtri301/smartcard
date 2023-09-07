@extends('admin.layouts.app')
@section('controller', 'Trang mới')
@section('controller_route', route('page-sub.index') )
@section('action','Danh sách')
@section('content')
    <div class="container-fluid">
        <div class="card card-secondary card-outline">
            <div class="card-body">
                @include('flash::message')
                <div class="table-responsive">
			        <table id="example1" class="table table-bordered table-striped table-hover w-100">
			            <thead>
			            <tr>
			                <th width="10px"><input type="checkbox" name="chkAll" id="chkAll"></th>
			                <th width="10px">STT</th>
			                <th>Tên trang</th>
                            <th>Liên kết</th>
			                <th>Thao tác</th>
			            </tr>
			            </thead>
			            <tbody>
                            @foreach($data as $item)
                                <tr>
                                    <td><input type="checkbox" name="chkItem[]" value="{{ $item->id }}"></td>
                                    <td>{{ $loop->index + 1 }}</td>
                                    <td>{{ $item->name_page }}</td>
                                    <td>
                                        <a href="{{route('home.page_sub', $item->slug)}}" target="_blank">
                                        <i class="fas fa-external-link-alt"></i> {{route('home.page_sub', $item->slug)}}
                                        </a>
                                    </td>
                                    <td>
                                        <a href="{{ route('page-sub.edit', $item->id ) }}" title="Cập nhật" class="btn btn-xs btn-info btn-edit modalEditItem">
                                            <i class="far fa-edit"></i>
                                        </a> 
                                        <a href="javascript:void(0);" class="btn btn-xs btn-danger btn-destroy" data-href="{{route('page-sub.destroy', $item->id) }}"
                                        data-toggle="modal" data-target="#confim" title="Xóa">
                                            <i class="far fa-trash-alt"></i>
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
@stop
@section('page_css')
<style>
#example1 > tbody > tr > td {
    vertical-align: middle;
}
</style>
@endsection