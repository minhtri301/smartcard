@extends('frontend.layouts.masterHome')
@section('main')
<main id="main">
  {{-- todo Banner Section --}}
  <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
    <img src="{{@$contentPage->header->image}}" alt="" class="banner-header">
    <span class="banner-header-double"></span>
    <div class="container text-center text-md-left" data-aos="fade-up">
      <?php $end = explode(" ", @$contentPage->header->title1);
      foreach ($end as $key => $value){ $endtitle = $value; } ?>
      <h1 style="margin-bottom: 19px;">{{str_replace($endtitle,'',@$contentPage->header->title1)}} <span>{{$endtitle}}</span></h1>
      <h2>{{@$contentPage->header->title2}}</h2>
      <h2>{{@$contentPage->header->title3}}</h2>
      <a href="#about" class="btn-get-started scrollto">TÌM HIỂU THÊM</a>
    </div>
  </section>
  {{-- todo End Banner Section --}} 

  {{-- todo About Section --}}
  <section id="what-we-do" class="what-we-do">
    <div class="container">
      <div class="section-title">
        <h2>GIỚI THIỆU</h2>
        <p>DANH THIẾP THÔNG MINH HINAMECARD LÀ GÌ?</p>
      </div>
    </div>
  </section>
  <section id="about" class="about">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 img-gif">
          <img src="{{@$contentPage->about->image}}" class="img-fluid" alt="">
        </div>
        <div class="col-lg-6 pt-4 pt-lg-0">
          <h3>{{ @$contentPage->about->title }}</h3>
          <p>
            {!! @$contentPage->about->text !!}
          </p>
        </div>
      </div>
    </div>
  </section>
  {{--todo End About Section --}}

  {{-- todo Feature Section --}}
  <section id="feature" class="services section-bg">
    <div class="container">
      <div class="section-title">
        <h2>Tính năng</h2>
        <p>Các tính năng tuyệt vời của Hinamecard</p>
      </div>

      <div class="row">
        @if(!empty(@$contentPage->feature))
        @foreach (@$contentPage->feature as $key => $value)
          <div class="col-md-6 mt-4">
            <div class="icon-box">
              <img src="{{asset($value->image)}}" alt="" >
              <h4 class="mb-0"><a href="#">{{$value->title}}</a></h4>
            </div>
          </div>
          <div class="col-md-6 mt-4 ">
            <div class="icon-box">
              <img src="{{asset($value->image2)}}" alt="" >
              <h4 class="mb-0"><a href="#">{{$value->title2}}</a></h4>
            </div>
          </div>
        @endforeach
        @endif
      </div>
    </div>
  </section>
  {{-- todo End Feature Section --}}

  {{-- todo Product Section --}}
  <section id="top" class="portfolio">
    <div class="container">
      <div class="section-title">
        <h2>Sản phẩm nổi bật</h2>
        <p>Một số card được người dùng quan tâm, lựa chọn và sử dụng nhiều nhất</p>
      </div>

      <div class="row portfolio-container">
        @if(!empty(@$contentPage->product))
          @foreach (@$contentPage->product as $key => $value)
              <div class="col-lg-4 col-md-6 portfolio-item filter-card wow fadeInUp">
                <div class="portfolio-wrap">
                  <figure>
                    <img src="{{asset($value->image)}}" class="img-fluid" alt="">
                    <a href="{{$value->link}}" class="link-details" title="More Details">Xem thêm</a>
                  </figure>

                  <div class="portfolio-info">
                    <h4><a href="portfolio-details.html">{{$value->name}}</a></h4>
                    <span>{{ $value->price }}</span><p><del>{{ $value->old_price }}</del></p>
                  </div>
                </div>
              </div>
          @endforeach
        @endif
      </div>
    </div>
  </section>
  {{-- todo End Product Section --}}

  {{-- todo Contact Section --}}
  <section id="contact" class="contact section-bg">
    <div class="container">
      <div class="section-title">
        <h2>Đăng ký tư vấn</h2>
        <p>Hãy liên hệ với chúng tôi để được phục vụ tốt nhất</p>
      </div>

      <div class="row mt-5 justify-content-center">
        <div class="col-lg-10">
          <div class="info-wrap">
            <div class="row">

              <div class="col-lg-4 info">
                <i class="bi bi-geo-alt"></i>
                <h4>Địa chỉ:</h4>
                <p>{{@$site_info->address}}</p>
              </div>

              <div class="col-lg-4 info mt-4 mt-lg-0">
                <i class="bi bi-envelope"></i>
                <h4>Email:</h4>
                <p>{{@$site_info->email}}</p>
              </div>

              <div class="col-lg-4 info mt-4 mt-lg-0">
                <i class="bi bi-phone"></i>
                <h4>Số điện thoại:</h4>
                <p>{{@$site_info->phone}}</p>
              </div>

            </div>
          </div>
        </div>
      </div>

      <div class="row mt-5 justify-content-center">
        <div class="col-lg-10">
          <form action="{{route('home.contact.post')}}"  class="php-email-form">
              <div class="row mb-3">
                  <div class="col-md-6 form-group">
                      <input type="text" name="name" class="form-control"  placeholder="Họ và Tên" >
                  </div>
                  <div class="col-md-6 form-group mt-3 mt-md-0">
                      <input type="email" class="form-control" name="email"  placeholder="Email" >
                  </div>
              </div>

              <div class="row">
                  <div class="col-md-6 form-group">
                      <input type="text" name="phone" class="form-control"  placeholder="Điện thoại" >
                  </div>
                  <div class="col-md-6 form-group mt-3 mt-md-0">
                      <input type="text" class="form-control" name="address"  placeholder="Địa chỉ" >
                  </div>
              </div>

              <div class="form-group mt-3 textarea">
                  <textarea class="form-control" name="content" rows="5" placeholder="Nội dung" ></textarea>
              </div>

              <div class="my-3">
                  <div class="loading">Loading</div>
                  <div class="sent-message">Đã gửi thông tin đăng ký tư vấn. Chúng tôi sẽ sớm liên hệ lại với bạn.</div>
              </div>
              <div class="text-center"><button type="submit" class="btn_send_contact" >Gửi</button></div>
          </form>
        </div>
      </div>
    </div>
  </section>
  {{-- todo End Contact Section --}}

  {{-- todo Reviews Section --}}
  <section id="reviews" class="testimonials section-bg">
    <div class="container">
      <div class="section-title">
        <h2>Đánh giá khách hàng</h2>
        <p>Đánh giá từ những khách hàng sử dụng và trải nghiệm card thông minh</p>
      </div>

      <div class="testimonials-slider swiper" data-aos="fade-up" data-aos-delay="100">
        <div class="swiper-wrapper">
          @if(!empty(@$contentPage->previews))
            @foreach (@$contentPage->previews as $key => $value)
              <div class="swiper-slide">
                <div class="testimonial-item">
                  <p>
                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                    {{$value->text}}
                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                  </p>
                  <img src="{{asset($value->image)}}" class="testimonial-img" alt="">
                  <h3>{{$value->name}}</h3>
                  <h4>{{$value->role}}</h4>
                </div>
              </div>
            @endforeach
          @endif
        </div>
        <div class="swiper-pagination"></div>
      </div>

    </div>
  </section>
</main>
@endsection
@section('page_script')
  <script type="text/javascript">
 var url = $(location).attr('href');
    var segments = url.split( '/' );
    var action = segments[3];
    console.log(action);
  </script>
@endsection
