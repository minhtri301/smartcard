<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>{{ config('app.name') }}</title>

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="icon" type="image/x-icon" href="{{asset(!empty($site_info->favicon) ? $site_info->favicon : 'sticker1.png')}}">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- AdminLTE -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/admin-lte@3.2/dist/css/adminlte.min.css">

    <!-- iCheck -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/icheck-bootstrap/3.0.1/icheck-bootstrap.min.css"
          integrity="sha512-8vq2g5nHE062j3xor4XxPeZiPjmRDh6wlufQlfC6pdQ/9urJkU07NM0tEREeymP++NczacJ/Q59ul+/K2eYvcg=="
          crossorigin="anonymous"/>

    <link rel="stylesheet" href="{{ url('backend/css/custom.css') }}">
    

</head>
<body class="hold-transition login-page">
<div class="login-box">
    {{-- <div class="login-logo">
        <a href="{{ url('/home') }}"><b>HINAMECARD</b></a>
        <p>Kết nối để thành công</p>
    </div> --}}
    <div class="login-logo">
        <a href="{{ url('/home') }}">
            <img src="{{asset(!empty($site_info->logo_web) ? $site_info->logo_web : 'backend/img/logo_web.png')}}" width="" alt="" sizes="" srcset="">
            {{-- <h5 class="mt-2" style="color:#0060BE">TRƯỜNG CAO ĐẲNG THƯƠNG MẠI</h5> --}}
        </a>
    </div>
    <!-- /.login-logo -->

    <!-- /.login-box-body -->
    <div class="card">
        <div class="card-body login-card-body">
      

            <form method="post" action="{{ route('login') }}">
                @csrf
                <label for="">Tên đăng nhập</label>
                <div class="input-group mb-3">
                    <input type="text"
                           name="user_name"
                           value="{{ old('user_name') }}"
                           placeholder="Nhập tên đăng nhập"
                           class="form-control @error('user_name') is-invalid @enderror">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            {{-- <span class="fas fa-envelope"></span> --}}
                            <svg width="17" height="17" viewBox="0 0 17 17" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M8 9.0625C5.6225 9.0625 3.6875 7.1275 3.6875 4.75C3.6875 2.3725 5.6225 0.4375 8 0.4375C10.3775 0.4375 12.3125 2.3725 12.3125 4.75C12.3125 7.1275 10.3775 9.0625 8 9.0625ZM8 1.5625C6.245 1.5625 4.8125 2.995 4.8125 4.75C4.8125 6.505 6.245 7.9375 8 7.9375C9.755 7.9375 11.1875 6.505 11.1875 4.75C11.1875 2.995 9.755 1.5625 8 1.5625Z" fill="#FF0000"/>
                                <path d="M1.55762 16.5625C1.25012 16.5625 0.995117 16.3075 0.995117 16C0.995117 12.7975 4.13761 10.1875 8.00011 10.1875C8.75761 10.1875 9.50011 10.285 10.2201 10.4875C10.5201 10.57 10.6926 10.8775 10.6101 11.1775C10.5276 11.4775 10.2201 11.65 9.92011 11.5675C9.30511 11.395 8.66011 11.3125 8.00011 11.3125C4.76011 11.3125 2.12012 13.4125 2.12012 16C2.12012 16.3075 1.86512 16.5625 1.55762 16.5625Z" fill="#FF0000"/>
                                <path d="M12.5 16.5625C11.255 16.5625 10.085 15.9025 9.455 14.83C9.1175 14.29 8.9375 13.6525 8.9375 13C8.9375 11.905 9.425 10.8925 10.2725 10.2175C10.9025 9.71498 11.6975 9.4375 12.5 9.4375C14.465 9.4375 16.0625 11.035 16.0625 13C16.0625 13.6525 15.8825 14.29 15.545 14.8375C15.3575 15.1525 15.1175 15.4375 14.8325 15.6775C14.21 16.2475 13.3775 16.5625 12.5 16.5625ZM12.5 10.5625C11.945 10.5625 11.42 10.75 10.9775 11.1025C10.4 11.56 10.0625 12.2575 10.0625 13C10.0625 13.4425 10.1825 13.8775 10.415 14.2525C10.85 14.9875 11.6525 15.4375 12.5 15.4375C13.0925 15.4375 13.6625 15.22 14.0975 14.83C14.2925 14.665 14.4575 14.47 14.5775 14.26C14.8175 13.8775 14.9375 13.4425 14.9375 13C14.9375 11.6575 13.8425 10.5625 12.5 10.5625Z" fill="#FF0000"/>
                                <path d="M12.0724 14.305C11.9299 14.305 11.7874 14.2526 11.6749 14.1401L10.9324 13.3976C10.7149 13.1801 10.7149 12.82 10.9324 12.6025C11.1499 12.385 11.5099 12.385 11.7274 12.6025L12.0874 12.9626L13.2874 11.8525C13.5124 11.6425 13.8724 11.6576 14.0824 11.8826C14.2924 12.1076 14.2774 12.4676 14.0524 12.6776L12.4549 14.155C12.3424 14.2525 12.2074 14.305 12.0724 14.305Z" fill="#FF0000"/>
                            </svg>
                        </div>
                    </div>
                    @error('user_name')
                    <span class="error invalid-feedback">{{ $message }}</span>
                    @enderror
                </div>

                <label for="">Mật khẩu</label>
                <div class="input-group mb-3">
                    
                    <input type="password"
                           name="password"
                           placeholder="Nhập mật khẩu"
                           class="form-control @error('password') is-invalid @enderror">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="19" viewBox="0 0 18 19" fill="none">
                                <path d="M13.5 8.5625C13.1925 8.5625 12.9375 8.3075 12.9375 8V6.5C12.9375 4.1375 12.27 2.5625 9 2.5625C5.73 2.5625 5.0625 4.1375 5.0625 6.5V8C5.0625 8.3075 4.8075 8.5625 4.5 8.5625C4.1925 8.5625 3.9375 8.3075 3.9375 8V6.5C3.9375 4.325 4.4625 1.4375 9 1.4375C13.5375 1.4375 14.0625 4.325 14.0625 6.5V8C14.0625 8.3075 13.8075 8.5625 13.5 8.5625Z" fill="#FF0000"/>
                                <path d="M12.75 17.5625H5.25C1.9425 17.5625 0.9375 16.5575 0.9375 13.25V11.75C0.9375 8.4425 1.9425 7.4375 5.25 7.4375H12.75C16.0575 7.4375 17.0625 8.4425 17.0625 11.75V13.25C17.0625 16.5575 16.0575 17.5625 12.75 17.5625ZM5.25 8.5625C2.565 8.5625 2.0625 9.0725 2.0625 11.75V13.25C2.0625 15.9275 2.565 16.4375 5.25 16.4375H12.75C15.435 16.4375 15.9375 15.9275 15.9375 13.25V11.75C15.9375 9.0725 15.435 8.5625 12.75 8.5625H5.25Z" fill="#FF0000"/>
                                <path d="M6 13.25C5.9025 13.25 5.805 13.2275 5.715 13.19C5.6175 13.1525 5.54251 13.1 5.46751 13.0325C5.33251 12.89 5.25 12.7025 5.25 12.5C5.25 12.4025 5.27249 12.305 5.30999 12.215C5.34749 12.1175 5.40001 12.0425 5.46751 11.9675C5.54251 11.9 5.6175 11.8475 5.715 11.81C5.985 11.69 6.32249 11.7575 6.53249 11.9675C6.59999 12.0425 6.65251 12.125 6.69001 12.215C6.72751 12.305 6.75 12.4025 6.75 12.5C6.75 12.695 6.66749 12.89 6.53249 13.0325C6.38999 13.1675 6.195 13.25 6 13.25Z" fill="#FF0000"/>
                                <path d="M9 13.2501C8.805 13.2501 8.61001 13.1676 8.46751 13.0326C8.33251 12.8901 8.25 12.7026 8.25 12.5001C8.25 12.4026 8.26499 12.3051 8.30999 12.2151C8.34749 12.1251 8.40001 12.0426 8.46751 11.9676C8.64001 11.7951 8.9025 11.7125 9.1425 11.765C9.195 11.7725 9.24 11.7875 9.285 11.81C9.33 11.825 9.375 11.8476 9.42 11.8776C9.4575 11.9001 9.49499 11.9376 9.53249 11.9676C9.59999 12.0426 9.65251 12.1251 9.69001 12.2151C9.72751 12.3051 9.75 12.4026 9.75 12.5001C9.75 12.7026 9.66749 12.8901 9.53249 13.0326C9.49499 13.0626 9.4575 13.0925 9.42 13.1225C9.375 13.1525 9.33 13.1751 9.285 13.1901C9.24 13.2126 9.195 13.2276 9.1425 13.2351C9.0975 13.2426 9.045 13.2501 9 13.2501Z" fill="#FF0000"/>
                                <path d="M12 13.2501C11.7975 13.2501 11.61 13.1676 11.4675 13.0326C11.4 12.9576 11.3475 12.8751 11.31 12.7851C11.2725 12.6951 11.25 12.5976 11.25 12.5001C11.25 12.3051 11.3325 12.1101 11.4675 11.9676C11.505 11.9376 11.5425 11.9076 11.58 11.8776C11.625 11.8476 11.67 11.825 11.715 11.81C11.76 11.7875 11.805 11.7725 11.85 11.765C12.0975 11.7125 12.3525 11.7951 12.5325 11.9676C12.6675 12.1101 12.75 12.2976 12.75 12.5001C12.75 12.5976 12.7275 12.6951 12.69 12.7851C12.6525 12.8826 12.6 12.9576 12.5325 13.0326C12.39 13.1676 12.195 13.2501 12 13.2501Z" fill="#FF0000"/>
                            </svg>
                        </div>
                    </div>
                    @error('password')
                    <span class="error invalid-feedback">{{ $message }}</span>
                    @enderror

                </div>

                @error('loginfail')
                    <span class="error invalid-feedback d-block text-center mb-3">{{ $message }}</span>
                @enderror

                <div class="row">
                    <div class="col-12">
                        <button type="submit" class="btn btn-danger btn-block">Đăng nhập</button>
                    </div>

                </div>
            </form>
        </div>
        <!-- /.login-card-body -->
    </div>
    <!-- /.login-footer -->
    <div class="login-footer mt-4 text-center fs-">
        <span>Gặp sự cố khi đăng nhập? Vui lòng liên hệ admin.</span><br>
        <span>Email: <a class="text-white" href="mailto:admin@hinamecard.vn">admin@hinamecard.vn</a></span><br>
        <span>Hotline: <a class="text-white" href="phoneto:0905595300">0905595300</a></span>
    </div>
    <!-- /.login-footer -->


</div>
<!-- /.login-box -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"
        integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.2/js/bootstrap.bundle.min.js"
        integrity="sha512-igl8WEUuas9k5dtnhKqyyld6TzzRjvMqLC79jkgT3z02FvJyHAuUtyemm/P/jYSne1xwFI06ezQxEwweaiV7VA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- AdminLTE App -->
<script src="https://cdn.jsdelivr.net/npm/admin-lte@3.2/dist/js/adminlte.min.js"></script>

</body>
</html>
