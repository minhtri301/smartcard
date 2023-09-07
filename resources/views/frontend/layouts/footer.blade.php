<footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Liên hệ</h3>
            <p>
              {{@$site_info->address}} <br><br>
              <strong>Số điện thoại:</strong> {{@$site_info->phone}}<br>
              <strong>Email:</strong> {{@$site_info->email}}<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Hinamecard</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a class="scrollto" href="#hero">Trang chủ</a></li>
              <li><i class="bx bx-chevron-right"></i> <a class="scrollto" href="#about">Giới thiệu</a></li>
              <li><i class="bx bx-chevron-right"></i> <a class="scrollto" href="#feature">Tính năng</a></li>
              <li><i class="bx bx-chevron-right"></i> <a class="scrollto" href="#top">Nổi bật</a></li>
              <li><i class="bx bx-chevron-right"></i> <a class="scrollto" href="#contact">Tư vấn</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Điều khoản & Chính sách</h4>
              @if (isset($pageSub))
                <ul>
                  @foreach ($pageSub as $item)
                    <li><i class="bx bx-chevron-right"></i><a href="{{route('home.page_sub',$item->slug)}}">{{$item->name_page}}</a></li>
                  @endforeach
                </ul>
              @endif
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <img src="{{asset('frontend/image/smartcard.png')}}" alt="">
            <h4>Đăng ký nhận tin</h4>
            <p>Cập nhật tin tức mới nhất mỗi ngày</p>
            <form action="{{route('home.email.post')}}" method="post">
              @csrf
              <input type="email" name="email" placeholder="Email" required>
              <input type="submit" value="Đăng ký">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

      <div class="me-md-auto text-center text-md-start footer-b-left">
        <div class="copyright">
          &copy; 2023 <strong><span>Hinamecard</span></strong>. All Rights Reserved
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="{{@$site_info->social->twitter}}" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="{{@$site_info->social->facebook}}" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="{{@$site_info->social->instagram}}" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="{{@$site_info->social->skype}}" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="{{@$site_info->social->linkedin}}" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        <a href="{{@$site_info->social->zalo}}" class="zalo position-relative"><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0,0,256,256" width="40px" height="40px" fill-rule="nonzero"><g  transform="translate(25.6,25.6) scale(0.8,0.8)"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(5.33333,5.33333)"><path id="path1" d="M15,36v-29.173l-1.211,-0.811c-5.149,2.067 -8.789,7.096 -8.789,12.984v10c0,7.732 6.268,14 14,14h10c4.722,0 8.883,-2.348 11.417,-5.931v-1.069z" fill="#000000"/><path id="path2" d="M29,5h-10c-1.845,0 -3.601,0.366 -5.214,1.014c-3.333,3.236 -5.786,8.514 -5.786,12.986c0,6.771 0.936,10.735 3.712,14.607c0.216,0.301 0.357,0.653 0.376,1.022c0.043,0.835 -0.129,2.365 -1.634,3.742c-0.162,0.148 -0.059,0.419 0.16,0.428c0.942,0.041 2.843,-0.014 4.797,-0.877c0.557,-0.246 1.191,-0.203 1.729,0.083c3.313,1.759 7.193,1.995 10.86,1.995c4.676,0 9.339,-1.04 12.417,-2.916c1.621,-2.285 2.583,-5.07 2.583,-8.084v-10c0,-7.732 -6.268,-14 -14,-14z" fill="#eeeeee"/><path class="path3" d="M36.75,27c-2.067,0 -3.75,-1.683 -3.75,-3.75c0,-2.067 1.683,-3.75 3.75,-3.75c2.067,0 3.75,1.683 3.75,3.75c0,2.067 -1.683,3.75 -3.75,3.75zM36.75,21c-1.24,0 -2.25,1.01 -2.25,2.25c0,1.24 1.01,2.25 2.25,2.25c1.24,0 2.25,-1.01 2.25,-2.25c0,-1.24 -1.01,-2.25 -2.25,-2.25z" fill="#000000"/><path class="path3" d="M31.5,27h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-8.5h1.5z" fill="#000000"/><path class="path3" d="M27,19.75v0.519c-0.629,-0.476 -1.403,-0.769 -2.25,-0.769c-2.067,0 -3.75,1.683 -3.75,3.75c0,2.067 1.683,3.75 3.75,3.75c0.847,0 1.621,-0.293 2.25,-0.769v0.269c0,0.276 0.224,0.5 0.5,0.5h1v-7.25zM24.75,25.5c-1.24,0 -2.25,-1.01 -2.25,-2.25c0,-1.24 1.01,-2.25 2.25,-2.25c1.24,0 2.25,1.01 2.25,2.25c0,1.24 -1.01,2.25 -2.25,2.25z" fill="#000000"/><path class="path3" d="M21.25,18h-8v1.5h5.321l-5.571,6.5h0.026c-0.163,0.211 -0.276,0.463 -0.276,0.75v0.25h7.5c0.276,0 0.5,-0.224 0.5,-0.5v-1h-5.321l5.571,-6.5h-0.026c0.163,-0.211 0.276,-0.463 0.276,-0.75z" fill="#000000"/></g></g></g></svg></a>
      </div>
    </div>
</footer>