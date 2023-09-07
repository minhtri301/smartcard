@extends('frontend.layouts.master')
@section('main')
<main id="main">
    <div class="container">
        <div class="box-thong-tin-user update-infomation box-login position-relative">
            <form action="{{route('home.page.update')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="top-background">
                    <img src="{{asset(@$customer->image_cover ? $customer->image_cover : 'frontend/image/default.png')}}"  class="LoadImage" alt="cover_image" id="imageCoverUpload" >
                    <label for="uploadCover">
                        <img src="{{asset('frontend/images/Group 9715.png')}}" alt="" class="glyphicon glyphicon-folder-open" aria-hidden="true" alt="" >
                        <input type="file" id="uploadCover" class="d-none" name="image_cover" onchange="onFileSelectedCover(event)" value="">
                    </label>
                </div>
                <div class="img-avatar position-relative">
                    <img src="{{asset(@$customer->image ? $customer->image : 'frontend/images/user (9) 1.png')}}" class="avatar" id="imageUpload" alt="avatar">
                    <div class="file">
                        <label for="upload">
                        <img src="{{asset('frontend/images/Group 9715.png')}}" alt="" class="glyphicon glyphicon-folder-open" aria-hidden="true" alt="" >
                        <input type="file" id="upload" name="image" onchange="onFileSelected(event)">
                        </label>
                    </div>
                </div>
                <div class="content">
                   <input type="text" class="form-control text-start mb-3" placeholder="Nhập họ tên" name="name" value="{{@$customer->name}}">
                   <input type="text" class="form-control text-start mb-3" placeholder="Nhập số điện thoại" name="phone" value="{{@$customer->phone}}">
                   <a href="javascrip:void(0)" class="form-control text-start mb-3 copyContent" style="text-decoration: none;">{{@$customer->login_link}}</a>
                   {{-- <input type="text" class="form-control text-start mb-3 copyContent" value="{{@$customer->login_link}}" > --}}
                   <textarea name="title" class="form-control" id="" cols="30" rows="4" placeholder="Nhập mô tả" value="">{{@$customer->title}}</textarea>
                   <ul class="list-unstyled list-socal">
                    <div id="sortable">
                        @foreach ($data as $item)
                            <li class="item-list d-flex flex-row justify-content-between align-items-center position-relative" id="{{$item->id}}">
                                <div>
                                    <a href="javascript:void(0);" class="show-preview" data-content="{{$item->content}}" data-type="{{$item->app->type}}">
                                        <img src="{{asset($item->app->image ? $item->app->image  : __NO_IMAGE_DEFAULT__)}}" class="me-3 logo-icon" >
                                    </a>
                                </div>
                                <div>
                                    {{$item->app->name}} 
                                    @if($item->content)
                                        <img class="ms-3" src="{{asset('frontend/images/check.svg')}}" alt="" srcset="">
                                    @endif
                                </div>
                                <div class="dropdown dropstart">
                                    <a class="click-share" href="#" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
                                        ...
                                    </a>
                                    <ul class="dropdown-menu dropdow-editor" aria-labelledby="dropdownMenuLink">
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item get-edit" data-href="{{route('home.get.edit',$item->id)}}">
                                                <img src="{{asset('frontend/images/edit.svg')}}" alt="icon" srcset="">
                                                Chỉnh sửa
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="dropdown-item delete-card" data-href="{{route('home.delete.card',$item->id)}}">
                                                <img src="{{asset('frontend/images/delete.svg')}}" alt="icon" srcset="">
                                                Xóa
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                        @endforeach
                    </div>
                        <li class="d-flex flex-row justify-content-between" data-bs-toggle="modal" data-bs-target="#add-phone">
                            <div class="d-flex align-items-center">
                                <img src="{{asset('frontend/images/add.svg')}}" class="me-3"  alt="" srcset="">
                                <span>Thêm số điện thoại</span>
                            </div>
                        </li>
                        <li class="d-flex flex-row justify-content-between" data-bs-toggle="modal" data-bs-target="#add-link" >
                            <div class="d-flex align-items-center">
                                <img src="{{asset('frontend/images/add.svg')}}" class="me-3"  alt="" srcset="">
                                <span>Thêm liên kết</span>
                            </div>
                        </li>
                        <li class="d-flex flex-row justify-content-between" data-bs-toggle="modal" data-bs-target="#add-bank" >
                            <div class="d-flex align-items-center">
                                <img src="{{asset('frontend/images/add.svg')}}" class="me-3"  alt="" srcset="">
                                <span>Thêm tài khoản ngân hàng/ ví</span>
                            </div>
                        </li>
                   </ul>
                </div>
                
                <div class="footer d-flex flex-row gap-2">
                    <a href="{{route('home.page.information')}}" class="btn btn-huy">Hủy</a>
                    <a href="{{route('home.preview.get')}}" class="btn btn-preview">Xem trước</a>
                    <button type="submit" class="btn btn-save">Lưu</button>
                </div>
            </form>
            <div class="modal" id="modal-edit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="header-modal">
                            <h5>Cập nhật thông tin</h5>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">&times;</button>
                        </div>
                        <div id="get_add_icon">
                        </div>
                    </div>
                </div>
            </div>
            @include('frontend.modal.show_app')
            @include('frontend.modal.add_phone')
            @include('frontend.modal.add_link')
            @include('frontend.modal.add_bank')
        </div>
    </div>
@endsection
@section('page_script')
<script type="text/javascript">

$("#sortable").enableTouchPunch();

function loadCard() {
    event.preventDefault();
    var idBank = $('#id-bank').val();
    var idphone = $('#id-phone').val();
    var idLink = $('#id-link').val();
    var inputBank = $('#inputBank').val();
    var inputPhone = $('#inputPhone').val();
    var inputLink = $('#inputLink').val();

    if(inputBank != ''){
        var link = inputBank;
    }else if(inputPhone != ''){
        var link = inputPhone;
    }else if(inputLink != ''){
        var link = inputLink;
    }

    if(idBank != null){
        var id = idBank;
    }else if(idphone != null){
        var id = idphone;
    }else if(idLink != null){
        var id = idLink;
    }
    $.ajax({
        type: 'GET', 
        url: '{{ URL::route('home.get.loadcard') }}',
        data: {"addInput": link,"id": id}, 
        dataType: "json", 
        success: function (data){
            if (data.success == 'success') {
                Toast.fire({
                    icon: 'success',
                    title: data.message
                })
                $('#add-phone').modal('hide');
                $('#add-link').modal('hide');
                $('#add-bank').modal('hide');
                $('#sortable').html(data.html);
            };
            if (data.success == false) {
                $('.errorInput').show();
                $('.errorSelect').show();
                $('.errorSelect').html(null);
                $('.errorInput').html(null);

                $.each(data.errorMessage, function (field, item) {
                    var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> ' + item + '</span>';  
                    if(field == 'id'){
                        $('.errorSelect').append(html_error);
                    };
                    if(field == 'addInput'){
                        $('.errorInput').append(html_error);
                    }
                });
            }
        },
    })
};

</script>
@endsection


  