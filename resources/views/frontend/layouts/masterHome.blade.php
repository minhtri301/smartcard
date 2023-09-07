<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="icon" type="image/x-icon" href="{{asset(!empty($site_info->favicon) ? $site_info->favicon : 'sticker1.png')}}">
  <!-- Favicons -->

  <!-- SEO -->
  {!! SEO::generate() !!}              
  {!! JsonLd::generate() !!}
  <!-- EndSEO -->

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <link href="{{url('frontend/libs/bootstrap/css/bootstrap.min.css')}}"  rel="stylesheet">
  <link href="{{url('frontend/libs/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
  <link href="{{url('frontend/libs/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{url('frontend/libs/glightbox/css/glightbox.min.css')}}" rel="stylesheet">
  <link href="{{url('frontend/libs/swiper/swiper-bundle.min.css')}}" rel="stylesheet">
  <link rel="stylesheet" href="{{url('backend/plugins/fontawesome/css/all.min.css')}}">
  <link rel="stylesheet" href="{{url('backend/plugins/sweetalert2/sweetalert2.min.css')}}">

  <meta name="_token" content="{{ csrf_token() }}" />

  <link href="{{url('frontend/css/home.css?v='.time())}}" rel="stylesheet">
  <link href="{{url('frontend/css/custom.css?v='.time())}}" rel="stylesheet">

</head>

<body>
    
@include('frontend.layouts.header')
    
@yield('main')

@include('frontend.layouts.footer')
  
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script src="{{asset('frontend/libs/purecounter/purecounter_vanilla.js')}}"></script>
<script src="{{asset('frontend/libs/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('frontend/libs/glightbox/js/glightbox.min.js')}}"></script>
<script src="{{asset('frontend/libs/isotope-layout/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('frontend/libs/swiper/swiper-bundle.min.js')}}"></script>
<script src="{{asset('frontend/libs/waypoints/noframework.waypoints.js')}}"></script>
<script src="{{url('backend/plugins/sweetalert2/sweetalert2.min.js')}}"></script>
 
<script src="{{ url('frontend/js/main.js' )}}"></script>

<!-- Template Main JS File -->
<script src="{{asset('frontend/js/template.js')}}"></script>

@yield('page_script')

@include('admin.layouts.sweet-alert')

<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>

</body>
</html>