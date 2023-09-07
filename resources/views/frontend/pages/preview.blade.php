@extends('frontend.layouts.master')
@section('main')
<main id="main">
    <div class="container">
        <div class="box-thong-tin-user preview box-login justify-content-between position-relative">
            <form class="update-infomation" action="">
                <div class="top-background">
                    <img src="{{asset(@$customer->image_cover ? $customer->image_cover : 'frontend/image/default.png')}}" data-imgsrc="frontend/image/default.png" class="LoadImage" alt="cover_image" >
                </div>
                <div class="img-avatar position-relative">
                    <img src="{{asset(@$customer->image ? $customer->image : 'frontend/images/user1.png')}}" class="avatar" alt="avatar">
                    <a class="btn-share" data-bs-toggle="modal" data-bs-target="#modalShare">
                        <i class="fas fa-share-alt"></i>
                    </a>
                </div>
                <div class="content">
                    <h2 class="name d-flex align-items-center justify-content-center">
                        <span class="me-1">{{$customer->name ? $customer->name : $customer->user_name }}</span>
                        <img src="{{asset('frontend/image/Vector (6).png')}}" alt="icon">
                    </h2>
                    <p class="desc">{{$customer->title ? $customer->title : 'Chưa có mô tả'}}</p>
                </div>
                <a href="{{route('home.page.details')}}" class="btn event" >Cập nhật thông tin</a>
                <ul class="list-unstyled list-socal">
                    @foreach ($data as $item)
                    <a href="javascript:void(0);" class="show-preview text-decoration-none" data-content="{{$item->content}}" data-type="{{$item->app->type}}" >
                        <li class=" item-list d-flex flex-row justify-content-between align-items-center position-relative">
                            <div>
                                <img src="{{asset($item->app->image)}}" class="me-3 logo-icon" alt="" srcset="">
                            </div>
                            <div class="text-center w-100">
                                <span>{{$item->app->name}}</span>
                            </div>
                            <div class="item-empty">
                            </div>
                        </li>
                    </a>
                    @endforeach
               </ul>
            </form>
            <div class="footer-susset text-center">
                @if (!empty($title))
                    @foreach ($title as $item)
                    @if( $loop->index == 0 )
                        <h3 class="fs-5">{{$item}}</h3>
                    @else
                        <p class="fs-6 mb-1">{{$item}}</p>
                    @endif
                    @endforeach
                @endif
                <div class="mt-3">
                    <a href="{{ $customer->group->link ? $customer->group->link : '#'}}" target="_blank">
                        <img class="w-100 rounded" src="{{asset($customer->group->image)}}" alt="" srcset="">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal" id="show_preview" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="header-modal">
                    <h5>THÔNG TIN</h5>
                    <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">&times;</button>
                </div>
                <div class="body-modal">
                    <div class="form-group" >
                        <label class="type" for=""></label>
                        <div class="input-group"  data-target-input="nearest">
                            <a href="javascrip:void(0)" class="form-control content copyContent contentInfor" style="text-decoration: none;"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection
@section('page_script')

<script type="text/javascript">

</script>

@endsection