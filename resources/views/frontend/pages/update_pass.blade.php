@extends('frontend.layouts.master')
@section('main')
<main id="main">
    <div class="container">
        <div class="box-thong-tin-user box-login update-infomation position-relative">
            <div class="top-background">
                <img src="{{asset(@$customer->image_cover ? $customer->image_cover : 'frontend/image/default.png')}}" data-imgsrc="frontend/image/default.png" class="LoadImage" alt="cover_image" >
            </div>
            <form action="{{route('home.updatePass.post')}}" method="POST">
                @csrf
                <div class="top-background">
                    <img src="{{asset(@$customer->image_cover ? $customer->image_cover : '')}}" class="LoadImage" alt="cover_image" >
                </div>
                <div class="img-avatar position-relative">
                    <img src="{{asset(@$customer->image ? $customer->image : 'frontend/images/user (9) 1.png')}}" class="avatar" alt="">
                    <div class="file">
                        <img src="{{asset('frontend/images/Group 9715.png')}}" alt="avatar" >
                    </div>      
                </div>
                <div class="content" id="updatePass">
                    <h2 class="name">{{@$customer->name ? @$customer->name : '@nguyenvana' }}</h2>
                    <p class="desc">{{@$customer->title ? @$customer->title : 'Chưa có mô tả'}}</p>

                    <div class="form-group text-start">
                        <label for="exampleInputPassword1">Mật khẩu cũ</label>
                        <input type="password" class="form-control" name="password" value="" id="exampleInputPassword1" placeholder="Mật khẩu cũ">
                        @error('password') <span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> {{ $message }}</span>@enderror
                    </div>
                    <div class="form-group text-start">
                        <label for="exampleInputPassword1">Mật khẩu mới</label>
                        <input type="password" class="form-control" name="passNew" id="exampleInputPassword1" placeholder="Mật khẩu mới">
                        @error('passNew') <span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> {{ $message }}</span>@enderror
                    </div>
                    <div class="form-group text-start">
                        <label for="exampleInputPassword1">Xác nhận mật khẩu mới</label>
                        <input type="password" class="form-control" name="repassNew" id="exampleInputPassword1" placeholder="Nhập lại mật khẩu mới">
                        @error('repassNew') <span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> {{ $message }}</span>@enderror
                    </div>
                </div>
                <div class="footer d-flex flex-row gap-2">
                    <a href="{{route('home.page.information')}}" class="btn btn-huy">Hủy</a>
                    <button type="submit" class="btn btn-save">Cập nhật</button>
                </div>
                {{-- <div class="card-body" id="updatePass">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Mật khẩu cũ</label>
                        <input type="password" class="form-control" name="password" value="" id="exampleInputPassword1" placeholder="Mật khẩu cũ">
                        @error('password') <span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> {{ $message }}</span>@enderror
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Mật khẩu mới</label>
                        <input type="password" class="form-control" name="passNew" id="exampleInputPassword1" placeholder="Mật khẩu mới">
                        @error('passNew') <span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> {{ $message }}</span>@enderror
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Xác nhận mật khẩu mới</label>
                        <input type="password" class="form-control" name="repassNew" id="exampleInputPassword1" placeholder="Nhập lại mật khẩu mới">
                        @error('repassNew') <span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> {{ $message }}</span>@enderror
                    </div>
                    <button type="submit" >Cập nhật</button>
                </div> --}}
            </form>
        </div>
    </div>
@endsection

