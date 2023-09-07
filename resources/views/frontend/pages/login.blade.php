@extends('frontend.layouts.master')
@section('main')
<main id="main">
    <div class="container">
        <div class="box-login bg-black">
            <img class="logo" src="{{asset(!empty($site_info->logo_web) ? $site_info->logo_web : 'backend/img/logo_web.png')}}" width="" alt="" sizes="" srcset="">
            <div class="box-login-register">
                <a href="javascript:void(0);" class="login btn">Đăng nhập</a>
                <a href="#" class="register btn">Đăng ký</a>
            </div>
            <div class="modals">
                <div class="modal-content">
                    <div class="header-modal">
                        <h3>Đăng Nhập</h3>
                        <span class="close">&times;</span>
                    </div>
                    <div class="body-modal">
                        <h5 class="title">Vui lòng nhập tài khoản đã được cung cấp</h5>
                        <form action="" class="loginPass">
                            <input type="text" class="form-control" name="user_name" id="user_name" placeholder="Tài khoản của bạn">
                            <div class="errorUser" style="display: none; "></div>

                            <div class="form-group passcheck" style="display: none">
                                <label for="">Mật khẩu</label>
                                <input type="password" class="passLogin" name="password" placeholder="Mật khẩu">
                                <div class="errorPass" style="display: none; margin-top: -16px"></div>
                                <input type="hidden" class="required" value="">
                            </div>
                            <button type="submit" class="buttonLogin">Đăng nhập</button>
                        </form>
                        <p>Chưa có tài khoản?<a href="#" class="register-now"> Đăng ký ngay</a></p>
                        <a href="#" class="support">Trung tâm hỗ trớ</a>
                    </div>
                </div>
            </div>

            <div class="modals-pass">
                <div class="modal-content">
                    <div class="header-modal">
                        <h3>Đăng Nhập</h3>
                        <span class="close">&times;</span>
                    </div>
                    <div class="body-modal">
                        <h5 class="title">Vui lòng cung cấp mật khẩu mới</h5>
                        <form action="" class="loginPass">
                            <div class="form-group" class="loginCode">
                                <label for="">Mật khẩu mới</label>

                                <input type="password" name="password" class="password" placeholder="Mật khẩu mới">
                                <div class="passNew" style="display: none; margin-top: -16px;"></div>

                                <input type="password" name="repassword" class="repassword" placeholder="Nhập lại mật khẩu">
                                <div class="repassNew" style="display: none; margin-top: -16px; "></div>

                                <input type="hidden" value="" class="id">
                                <button type="submit" class="buttonLogin">Đăng nhập</button>
                            </div>
                        </form>
                        <p>Chưa có tài khoản?<a href="#" class="register-now"> Đăng ký ngay</a></p>
                        <a href="#" class="support">Trung tâm hỗ trợ</a>
                    </div>
                </div>
            </div>

            <div class="modals-code">
                <div class="modal-content">
                    <div class="header-modal">
                        <h3>Đăng Nhập</h3>
                        <span class="close">&times;</span>
                    </div>
                    <div class="body-modal">
                        <h5 class="title">Vui lòng nhập mã đăng nhập đã được cung cấp</h5>
                        <form action="" class="loginCode">
                            <input type="text" name="login_code" id="login-code-input" placeholder="X-X-X-X-X-X">
                            <div class="errorCode" style="display: none;"></div>
                            <button type="submit" class="buttonLogin">Đăng nhập</button>
                        </form>
                        <p>Chưa có tài khoản?<a href="#" class="register-now"> Đăng ký ngay</a></p>
                        <a href="#" class="support">Trung tâm hỗ trợ</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
@endsection
@section('page_script')
<script style="text/javascript">
    $('.buttonLogin').on('click', function(e){
        event.preventDefault();
        var user_name = $('#user_name').val(); 
        var passLogin = $('.passLogin').val();
        var code = $('#login-code-input').val();
        var pass = $('.password').val(); 
        var repass = $('.repassword').val();
        $.ajax({
            type: "POST", 
            url: '{{ URL::route('home.login.post') }}', 
            data: {"user_name":user_name, "passLogin":passLogin, "code":code , "pass":pass, "repass":repass ,"_token": '{{csrf_token()}}'},
            dataType: "json", 
            success: function (data){

                {{--! Check tài khoản thất bại --}}
                if(data.success == false){
                    $('.errorUser').html(null);
                    $('.errorUser').show();
                    $.each(data.errorMessage, function (field, item) {
                        var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> ' + item + '</span>';     
                        $('.errorUser').append(html_error);  
                    });
                }


                {{--! check mã code thất bại --}}
                if(data.success == 'errorCode'){
                    $('.errorCode').html(null);
                    $('.errorCode').show();
                    var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> Mã không chính xác</span>';  
                    $('.errorCode').append(html_error)
                }

                {{--todo check khi input mật khẩu mới rỗng --}}
                if($('.required').val() == 2){
                    $('.passNew').html(null);    
                    $('.repassNew').html(null);
                    $('.passNew').show(); 
                    var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> Vui lòng nhập mật khẩu mới</span>';  
                    $('.passNew').append(html_error);
                }

                {{--! check mật khẩu mới thất bại  --}}
                if(data.success == 'falsePass'){
                    $('.passNew').html(null); 
                    $('.repassNew').html(null);
                    $('.passNew').show(); 
                    $('.repassNew').show();
                    $.each(data.errorMessage, function (field, item) {
                        var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> ' + item + '</span>';  
                        if(field == 'pass'){
                            $('.passNew').append(html_error);
                        }
                        if(field == 'repass'){
                            $('.repassNew').append(html_error);
                        }
                    });
                }

                {{--todo Tài khoản chưa được kích hoạt --}}
                if(data.error == 'lockCustomer'){
                    Toast.fire({
                        iconColor: '#dc3545',
                        icon: 'error',
                        title: data.message,
                        customClass: {
                            title: 'cl-red',
                            timerProgressBar: 'bg-red',
                        },
                    });
                }

                {{--todo Check khi input mật khẩu và code rỗng --}}
                if($('.required').val() == 1){
                    // required cho password
                    $('.errorPass').html(null);
                    $('.errorPass').show();
                    var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> Vui lòng nhập mật khẩu</span>';  
                    $('.errorPass').append(html_error)
                    // required cho code
                    $('.errorCode').html(null);
                    $('.errorCode').show();
                    var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> Vui lòng nhập mã</span>';  
                    $('.errorCode').append(html_error);
                }

                {{--! check đăng nhập mật khẩu thất bại --}}
                if(data.success == 'errorPass'){
                    $('.errorUser').html(null);
                    $('.errorPass').html(null);
                    $('.errorPass').show();
                    var html_error = '<span class="fr-error d-block mt-2" style="color: red"><i class="fas fa-exclamation-circle"></i> Mật khẩu không chính xác</span>';  
                    $('.errorPass').append(html_error)
                }

              

                {{--* check tài khoản thành công --}}
                if(data.success == 'pass'){
                    $('.errorUser').html(null);
                    $('.passcheck').show();
                    $('.required').val(1);
                }
                if(data.success == 'code'){
                    $('.modals-code').show();
                    $('.modals').hide();
                    $('.required').val(1);
                }

                {{--* check đăng nhập mật khẩu thành công --}}
                if(data.success == 'successPass'){
                    $('.errorPass').html(null);
                    window.location.href = '{{ route('home.page.information') }}';
                    Toast.fire({
                        iconColor: '#198754',
                        icon: 'success',
                        title: data.message,
                        customClass: {
                            title: 'cl-green',
                            timerProgressBar: 'bg-green',
                        },
                    })
                }

                {{--* check mã code thành công --}}
                if(data.success == 'successCode'){
                    $('.modals-code').hide();
                    $('.modals-pass').show();
                    $('.required').val(2);
                }

                {{--* check mật khẩu mới thành công  --}}
                if(data.success == 'successPassNew'){
                    $('.passNew').html(null); 
                    window.location.href = '{{ route('home.page.information') }}';
                    Toast.fire({
                        iconColor: '#198754',
                        icon: 'success',
                        title: data.message,
                        customClass: {
                            timerProgressBar: 'bg-green',
                            title: 'cl-green',
                        },
                    })
                }
            }
        })
    })
  
</script>
@endsection

