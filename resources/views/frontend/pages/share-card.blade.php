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
                </div>
                <div class="content">
                    <h2 class="name d-flex align-items-center justify-content-center">
                        <span class="me-1">{{$customer->name ? $customer->name : $customer->user_name }}</span>
                        <img src="{{asset('frontend/image/Vector (6).png')}}" alt="icon" class="me-1">
                        <a class="btn-share" data-bs-toggle="modal" data-bs-target="#modalShare">
                            <i class="fas fa-share-alt"></i>
                        </a>
                    </h2>
                    <p class="desc">{{$customer->title ? $customer->title : 'Chưa có mô tả'}}</p>
                </div>    
                <button class="btn event-black" id="save-btn" data-name="{{convert_vi_to_en($customer->name)}}" data-phone="{{$customer->phone}}" data-home="{{ route('home.get.shareCard', ['slug' => $customer->slug]) }}">Lưu vào danh bạ</button>
                <ul class="list-unstyled list-socal">
                    @foreach ($data as $item)
                    <a href="javascript:void(0);" class="show-preview text-decoration-none" data-content="{{$item->content}}" data-type="{{$item->app->type}}" >
                        <li class="item-list d-flex flex-row justify-content-between align-items-center position-relative">
                            <div>
                                <img src="{{asset($item->app->image)}}" class="logo-icon" alt="" srcset="">
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
                    <a href="{{route('home.group_banner',['url' =>  $customer->group->link, 'id' => $customer->group->id])}}">
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
                            <a href="javascript:void(0)" class="form-control contentInfor copyContent" style="text-decoration: none;"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Share-->
    <div class="modal fade" id="modalShare" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="shareModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body p-0">
                    <button type="button" class="btn-close share-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    <div class="text-center mt-3">
                        <h4 class="share-title">
                            Chia Sẻ Trang sMarT.card
                            <br>
                            Của <span>{{$customer->name}}</span>
                        </h4>
                        <div class="d-flex justify-content-center mt-4" id="qrcode"></div>
                        <div class="share-link-box mt-4">
                            <span class="mb-1">Liên kết giới thiệu của bạn</span>
                            <a href="javascript:void(0)" class="clipboard linkshare copyContent" data-href="{{ route('home.get.shareCard', ['slug' => $customer->slug]) }}">
                                <span>{{ request()->getHost().'/'.$customer->slug }}</span>
                            </a>
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

var saveBtn = document.getElementById("save-btn");
saveBtn.addEventListener("click", function (e) {
    e.preventDefault();
    const name = $(this).data("name");
    const phone = $(this).data("phone");
    const home = $(this).data("home");
    if(phone!==''){
        // Get the contact information from the website
        var contact = {
            name: name,
            phone: phone,
            home: home
        };
        // create a vcard file
        var vcard = "BEGIN:VCARD\nVERSION:4.0\nFN:" + contact.name + "\nTEL;TYPE=work,voice:" + contact.phone + "\nURL:" + contact.home + "\nEND:VCARD";
        var blob = new Blob([vcard], { type: "text/vcard" });
        var url = URL.createObjectURL(blob);
        
        const newLink = document.createElement('a');
        newLink.download = contact.name + ".vcf";
        newLink.textContent = contact.name;
        newLink.href = url;
        
        newLink.click();
    }else{
        Toast.fire({
            icon: 'error',
            iconColor: '#dc3545',
            title: 'Số điện thoại chưa được cập nhật',
            customClass: {
                timerProgressBar: 'bg-red',
                title: 'cl-red',
            }
        })
    }
});

$(document).ready(function() {
    const link = $('.linkshare').data("href");
    if (link) {
        const qrcode = new QRCode(document.getElementById("qrcode"), {
            text: link,
            width: 128,
            height: 128,
            correctLevel: QRCode.CorrectLevel.M
        });
    }
});
</script>
@endsection