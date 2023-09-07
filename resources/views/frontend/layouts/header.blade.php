<header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo me-auto">
        <h1><a href="{{route('home.page.index')}}"><img src="{{asset('frontend/image/smartcard.png')}}" alt=""></a></h1>
      </div>

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul >
          <li><a class="nav-link scrollto active" href="#hero">Trang chủ</a></li>
          <li><a class="nav-link scrollto" href="#about">Giới thiệu</a></li>
          <li><a class="nav-link scrollto" href="#feature">Tính năng</a></li>
          <li><a class="nav-link scrollto " href="#top">Nổi bật</a></li>
          <li><a class="nav-link scrollto" href="#contact">Tư vấn</a></li>
          <li><a class="nav-link scrollto" href="#reviews">Đánh giá</a></li>
          
         
          <li class="dropdown"><a href="#"><span>Điều khoản</span> <i class="bi bi-chevron-down"></i></a>
            @if (isset($pageSub))
              <ul>
                @foreach ($pageSub as $item)
                  <li><a href="{{route('home.page_sub',$item->slug)}}">{{$item->name_page}}</a></li>
                @endforeach
              </ul>
            @endif
          </li>

          <li><a class="nav-link d-block d-lg-none login" href="{{route('home.login')}}">Đăng nhập</a></li>

        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <div class="header-social-links d-flex align-items-center d-none d-lg-block">
        <a href="{{route('home.login')}}" class="btn login">Đăng nhập</a>
      </div>
    </div>
  </header>
 