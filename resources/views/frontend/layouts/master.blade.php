<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {{-- <title>{{!empty(Auth::guard('customer')->user()->name) ? Auth::guard('customer')->user()->name.' |' : null}} {{ !empty($site_info->site_title) ? $site_info->site_title : null }}</title> --}}
    <link rel="icon" type="image/x-icon" href="{{asset(!empty($site_info->favicon) ? $site_info->favicon : 'sticker1.png')}}">

     <!-- SEO -->
     {!! SEO::generate() !!}              
     {!! JsonLd::generate() !!}
     <!-- EndSEO -->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{url('frontend/libs/bootstrap/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{url('backend/plugins/fontawesome/css/all.min.css')}}">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="{{url('backend/plugins/sweetalert2/sweetalert2.min.css')}}">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="{{url('frontend/css/style.css?v='.time())}}">
    <link rel="stylesheet" href="{{url('frontend/css/custom.css?v='.time())}}">
    <meta name="_token" content="{{ csrf_token() }}" />

    @yield('page_css')
</head>

<body>
        @yield('main')
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>

<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 <!-- Bao gồm jQuery UI Touch Punch -->
<script src="{{asset('frontend/libs/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js')}}"></script>

<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
{{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script> --}}

<script src="{{asset('frontend/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>

<!-- Include qrcode.js -->
<script src="https://cdn.rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>

<script src="{{url('backend/plugins/sweetalert2/sweetalert2.min.js')}}"></script>

<script src="{{ url('frontend/js/main.js' )}}"></script>

<script src="{{ url('frontend/js/myscript.js' )}}"></script>

@include('admin.layouts.sweet-alert')

    @yield('page_script')
</body>

</html>