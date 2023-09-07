@extends('frontend.layouts.masterHome')
@section('main')
<main id="main">
    <section id="hero" class="d-flex flex-column justify-content-center align-items-center">
        <img src="{{asset($dataSeo->image)}}" alt="" class="banner-header">
        <span class="banner-header-double"></span>
        <div class="container text-center text-md-left" data-aos="fade-up">
          <h1 style="margin-bottom: 19px;">{{$dataSeo->name_page}}</h1>
        </div>
    </section>
    <section class="container lh-lg">       
        <div class="row page-sub-content">
            {!! $dataSeo->content !!}</div>
        </div>
    </section>
</main>

@endsection
@section('page_script')
    <script type="text/javascript">
    $('.scrollto').on('click', function(){
        var value = $(this).attr("href");
        window.location.href = "{{ route('home.page.index') }}"+"/"+value;
    })
    </script>
@endsection

  