@extends('admin.layouts.app')
@section('controller', 'Cài đặt chung' )
@section('controller_route', route('admin.settings.general'))
@section('action', 'Cập nhật')
@section('content')
	<div class="container-fluid">
       	@include('flash::message')
       	<form action="{!! route('admin.settings.general.post') !!}" method="POST">
			@csrf
			<div class="row">
				<div class="col-12 col-sm-12">
					<div class="card card-dark card-outline card-tabs">
						<div class="card-header p-0 pt-1 border-bottom-0">
							<ul class="nav nav-tabs" id="custom-tabs-three-tab" role="tablist">
								<li class="nav-item">
									<a class="nav-link active" id="custom-tabs-three-info-all-tab" data-toggle="pill" href="#custom-tabs-three-info-all" role="tab" aria-controls="custom-tabs-three-home" aria-selected="true">Logo & Map</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" id="custom-tabs-three-info-contact-tab" data-toggle="pill" href="#custom-tabs-three-info-contact" role="tab" aria-controls="custom-tabs-three-profile" aria-selected="false">Thông tin chung</a>
								</li>
                                <li class="nav-item">
									<a class="nav-link" id="custom-tabs-three-social-tab" data-toggle="pill" href="#custom-tabs-three-social" role="tab" aria-controls="custom-tabs-three-social" aria-selected="false">Mạng xã hội</a>
								</li>
                                <li class="nav-item">
									<a class="nav-link" id="custom-tabs-three-seo-tab" data-toggle="pill" href="#custom-tabs-three-seo" role="tab" aria-controls="custom-tabs-three-seo" aria-selected="false">Meta SEO</a>
								</li>
							</ul>
						</div>
						<div class="card-body">
							<div class="tab-content" id="custom-tabs-three-tabContent">
								<div class="tab-pane fade show active" id="custom-tabs-three-info-all" role="tabpanel" aria-labelledby="custom-tabs-three-info-all-tab">
									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-4">
											<div class="form-group">
											<label>Favicon</label>
												<div class="image">
													<div class="image__thumbnail small">
														<img src="{{ !empty($content->favicon) ? url('/').$content->favicon :  __NO_IMAGE_DEFAULT__ }}"  data-init="{{ __NO_IMAGE_DEFAULT__ }}">
														<a href="javascript:void(0)" class="image__delete" 
														onclick="urlFileDelete(this)">
															<i class="fa fa-times"></i></a>
														<input type="hidden" value="{{ @$content->favicon }}" name="content[favicon]"  />
														<div class="image__button" onclick="fileSelect(this)"><i class="fa fa-upload"></i> Upload</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-2 col-md-3 col-sm-4">
											<div class="form-group">
												<label>Logo admin</label>
												<div class="image">
													<div class="image__thumbnail small">
														<img src="{{ !empty($content->logo) ? url('/').$content->logo :  __NO_IMAGE_DEFAULT__ }}"  data-init="{{ __NO_IMAGE_DEFAULT__ }}">
														<a href="javascript:void(0)" class="image__delete" 
														onclick="urlFileDelete(this)">
															<i class="fa fa-times"></i></a>
														<input type="hidden" value="{{ @$content->logo }}" name="content[logo]"  />
														<div class="image__button" onclick="fileSelect(this)"><i class="fa fa-upload"></i> Upload</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-lg-2 col-md-3 col-sm-4">
											<div class="form-group">
											<label>Logo web</label>
												<div class="image">
													<div class="image__thumbnail banner">
														<img src="{{ !empty($content->logo_web) ? url('/').$content->logo_web :  __NO_IMAGE_DEFAULT__ }}"  data-init="{{ __NO_IMAGE_DEFAULT__ }}">
														<a href="javascript:void(0)" class="image__delete" 
														onclick="urlFileDelete(this)">
															<i class="fa fa-times"></i></a>
														<input type="hidden" value="{{ @$content->logo_web }}" name="content[logo_web]"  />
														<div class="image__button" onclick="fileSelect(this)"><i class="fa fa-upload"></i> Upload</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="row">
										{{-- <div class="col-sm-3">
											<div class="form-group">
												<label for="">Code Google Maps</label>
												<textarea name="content[google_maps]" class="form-control" rows="10">{!! @$content->google_maps !!}</textarea>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="form-group">
												<label for="">Tiktok</label>
											<input type="text" name="content[tiktok]" class="form-control" value="{!! @$content->tiktok !!}">
											</div>
										</div> --}}
										{{-- <div class="col-sm-3">
											<div class="form-group">
												<label for="">Google Analytics</label>
												<input type="text" name="content[google_analytics]" class="form-control" value="{!! @$content->google_analytics !!}">
											</div>
										</div>
										<div class="col-sm-3">
											<div class="form-group">
												<label for="">Google Tag Manager</label>
												<input type="text" name="content[google_tag_manager]" class="form-control" value="{!! @$content->google_tag_manager !!}">
											</div>
										</div>
										<div class="col-sm-3">
											<div class="form-group">
												<label for="">Facebook pixel</label>
												<textarea name="content[facebook_pixel]" class="form-control" rows="6">{!! @$content->facebook_pixel !!}</textarea>
											</div>
										</div>
										<div class="col-sm-3">
											<div class="form-group">
												<label for="">Facebook chat</label>
												<textarea name="content[facebook_chat]" class="form-control" rows="6">{!! @$content->facebook_chat !!}</textarea>
											</div>
										</div> --}}
			               			</div>

									{{-- <div class="row">
										<div class="col-lg-2 col-md-3 col-sm-4">
											<div class="form-group">
												<label>Logo header</label>
												<div class="image">
													<div class="image__thumbnail">
														<img src="{{ !empty($content->logo_header) ? url('/').$content->logo_header :  __NO_IMAGE_DEFAULT__ }}"  data-init="{{ __NO_IMAGE_DEFAULT__ }}">
														<a href="javascript:void(0)" class="image__delete" 
														onclick="urlFileDelete(this)">
															<i class="fa fa-times"></i></a>
														<input type="hidden" value="{{ @$content->logo_header }}" name="content[logo_header]"  />
														<div class="image__button" onclick="fileSelect(this)"><i class="fa fa-upload"></i> Upload</div>
													</div>
												</div>
											</div>
										</div>
										
										<div class="col-lg-2 col-md-3 col-sm-4">
											<div class="form-group">
												<label>Logo footer</label>
												<div class="image">
													<div class="image__thumbnail">
														<img src="{{ !empty($content->logo_footer) ? url('/').$content->logo_footer :  __NO_IMAGE_DEFAULT__ }}"  data-init="{{ __NO_IMAGE_DEFAULT__ }}">
														<a href="javascript:void(0)" class="image__delete" 
														onclick="urlFileDelete(this)">
															<i class="fa fa-times"></i></a>
														<input type="hidden" value="{{ @$content->logo_footer }}" name="content[logo_footer]"  />
														<div class="image__button" onclick="fileSelect(this)"><i class="fa fa-upload"></i> Upload</div>
													</div>
												</div>
											</div>
										</div>
									</div> --}}

									{{-- <div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<label for="">Email nhận thông tin liên hệ</label>
												<input type="email" class="form-control" name="content[email_admin]" value="{{ @$content->email_admin }}">
											</div>
											<div class="form-group">
												<label for="">Đăng ký nhận tin khuyến mãi(mô tả ngắn)</label>
												<textarea class="form-control" name="content[sale_desc]">{{ @$content->sale_desc }}</textarea>
											</div>
											<div class="form-group">
												<div class="custom-control custom-checkbox">
													<input class="custom-control-input" type="checkbox" name="content[index_google]" {{ @$content->index_google == 1 ? 'checked' : null }} id="showCheckbox1" value="1">
													<label for="showCheckbox1" class="custom-control-label">Cho phép google tìm kiếm</label>
												</div>
												
											</div>
										</div>
									</div> --}}
								</div>
                                <div class="tab-pane fade" id="custom-tabs-three-info-contact" role="tabpanel" aria-labelledby="custom-tabs-three-info-contact-tab">
									<div class="row">
										<div class="col-sm-12">
											<div class="form-group">
												<label for="">Tên trang web</label>
												<input type="text" class="form-control" name="content[company]"
												value="{{ @$content->company }}">
											</div>
											<div class="form-group">
												<label for="">Địa chỉ</label>
												<input type="text" class="form-control" name="content[address]"
												value="{{ @$content->address }}">
											</div>
											<div class="form-group">
												<label for="">Số điện thoại</label>
												<input type="text" class="form-control" name="content[phone]"
												value="{{ @$content->phone }}">
											</div>
											<div class="form-group">
												<label for="">Email</label>
												<input type="text" class="form-control" name="content[email]"
												value="{{ @$content->email }}">
											</div>
											{{-- <div class="form-group">
												<label for="">Fax</label>
												<input type="text" class="form-control" name="content[fax]"
												value="{{ @$content->fax }}">
											</div> --}}
											<div class="form-group">
												<label for="">Website</label>
												<input type="text" class="form-control" name="content[website]"
												value="{{ @$content->website }}">
											</div>
										</div>
									</div>
								</div>
								
                                <div class="tab-pane fade" id="custom-tabs-three-social" role="tabpanel" aria-labelledby="custom-tabs-three-social-tab">
									<div class="row">
										<div class="col-sm-12">
											<div class="re">
												<table class="table table-bordered table-hover social">
													<thead>
														<tr>
															<th width="20%">Mạng xã hội</th>
															<th>Liên kết</th>
														</tr>
													</thead>
													<tbody id="sortable">
														<tr>
															<td><i class="fab fa-twitter"></i> Twitter</td>
															<td>
																<input type="text" class="form-control" name="content[social][twitter]" value="{{ @$content->social->twitter }}">
															</td>
														</tr>
													
														<tr>
															<td><i class="fab fa-facebook-f"></i> Facebook</td>
															<td>
																<input type="text" class="form-control" name="content[social][facebook]" value="{{ @$content->social->facebook }}">
															</td>
														</tr>
														<tr>
															<td><i class="fab fa-instagram"></i> Instagram</td>
															<td>
																<input type="text" class="form-control" name="content[social][instagram]" value="{{ @$content->social->instagram }}">
															</td>
														</tr>
														<tr>
															<td><i class="fab fa-skype"></i> Skype</td>
															<td>
																<input type="text" class="form-control" name="content[social][skype]" value="{{ @$content->social->skype }}">
															</td>
														</tr>
														<tr>
															<td><i class="fab fa-linkedin-in"></i> Linkedin</td>
															<td>
																<input type="text" class="form-control" name="content[social][Linkedin]" value="{{ @$content->social->linkedin }}">
															</td>
														</tr>

														<tr>
															<td><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="zalo-setting" viewBox="0,0,256,256" width="30px" height="30px" fill-rule="nonzero"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(5.33333,5.33333)"><path d="M15,36v-29.173l-1.211,-0.811c-5.149,2.067 -8.789,7.096 -8.789,12.984v10c0,7.732 6.268,14 14,14h10c4.722,0 8.883,-2.348 11.417,-5.931v-1.069z" fill="#2e368f"/><path d="M29,5h-10c-1.845,0 -3.601,0.366 -5.214,1.014c-3.333,3.236 -5.786,8.514 -5.786,12.986c0,6.771 0.936,10.735 3.712,14.607c0.216,0.301 0.357,0.653 0.376,1.022c0.043,0.835 -0.129,2.365 -1.634,3.742c-0.162,0.148 -0.059,0.419 0.16,0.428c0.942,0.041 2.843,-0.014 4.797,-0.877c0.557,-0.246 1.191,-0.203 1.729,0.083c3.313,1.759 7.193,1.995 10.86,1.995c4.676,0 9.339,-1.04 12.417,-2.916c1.621,-2.285 2.583,-5.07 2.583,-8.084v-10c0,-7.732 -6.268,-14 -14,-14z" fill="#eeeeee"/><path d="M36.75,27c-2.067,0 -3.75,-1.683 -3.75,-3.75c0,-2.067 1.683,-3.75 3.75,-3.75c2.067,0 3.75,1.683 3.75,3.75c0,2.067 -1.683,3.75 -3.75,3.75zM36.75,21c-1.24,0 -2.25,1.01 -2.25,2.25c0,1.24 1.01,2.25 2.25,2.25c1.24,0 2.25,-1.01 2.25,-2.25c0,-1.24 -1.01,-2.25 -2.25,-2.25z" fill="#2e368f"/><path d="M31.5,27h-1c-0.276,0 -0.5,-0.224 -0.5,-0.5v-8.5h1.5z" fill="#2e368f"/><path d="M27,19.75v0.519c-0.629,-0.476 -1.403,-0.769 -2.25,-0.769c-2.067,0 -3.75,1.683 -3.75,3.75c0,2.067 1.683,3.75 3.75,3.75c0.847,0 1.621,-0.293 2.25,-0.769v0.269c0,0.276 0.224,0.5 0.5,0.5h1v-7.25zM24.75,25.5c-1.24,0 -2.25,-1.01 -2.25,-2.25c0,-1.24 1.01,-2.25 2.25,-2.25c1.24,0 2.25,1.01 2.25,2.25c0,1.24 -1.01,2.25 -2.25,2.25z" fill="#2e368f"/><path d="M21.25,18h-8v1.5h5.321l-5.571,6.5h0.026c-0.163,0.211 -0.276,0.463 -0.276,0.75v0.25h7.5c0.276,0 0.5,-0.224 0.5,-0.5v-1h-5.321l5.571,-6.5h-0.026c0.163,-0.211 0.276,-0.463 0.276,-0.75z" fill="#2e368f"/></g></g></svg>
																 Zalo</td>
															<td>
																<input type="text" class="form-control" name="content[social][zalo]" value="{{ @$content->social->zalo }}">
															</td>
														</tr>
														
														<tr>
															<td><i class="fab fa-youtube"></i> Youtube</td>
															<td>
																<input type="text" class="form-control" name="content[social][youtube]" value="{{ @$content->social->youtube }}">
															</td>
														</tr>
														
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
								
								<div class="tab-pane fade" id="custom-tabs-three-seo" role="tabpanel" aria-labelledby="custom-tabs-three-seo-tab">
									<div class="form-group">
										<label>Meta Title</label>
										<small style="float: right;"><span id="countTitle">{{ @$content->site_title != null ? mb_strlen( $content->site_title, 'UTF-8') : 0 }}</span></small>
										<input type="text" class="form-control" name="content[site_title]" value="{!! old('site_title', @$content->site_title) !!}" id="meta_title">
									</div>

									<div class="form-group">
										<label>Meta Description</label>
										<small style="float: right;"><span id="countMeta">{{ @$content->site_description != null ? mb_strlen( $content->site_description, 'UTF-8') : 0 }}</span></small>
										<textarea name="content[site_description]" class="form-control" id="meta_description" rows="3">{!! old('meta_description', isset($content->site_description) ? $content->site_description : null) !!}</textarea>
									</div>

									<div class="form-group">
										<label>Meta Keyword</label>
										<input type="text" class="form-control" name="content[site_keyword]" value="{!! old('site_keyword', isset($content->site_keyword) ? $content->site_keyword : null) !!}">
									</div>
								</div>
								<div class="row">
									<div class="col-lg-12">
										<button class="btn btn-sm btn-dark" type="submit">Lưu lại</button>
									</div>
								</div>
							</div>
						</div>
						<!-- /.card -->
					</div>
				</div>
			</div>
		</form>
	</div>

@stop

@section('scripts')
	<script>
		
	</script>
	
@endsection

@section('css')
	<link rel="stylesheet" href="{{ url('backend/plugins/datetimepicker/bootstrap-timepicker.css') }}">
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">
@endsection

