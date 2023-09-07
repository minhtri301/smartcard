<?php $key  = isset($key) ? $key : (int) round(microtime(true) * 1000); ?>
<tr>
    <td>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group mt-3">
                    <div class="feature">
                        <div class="image text-center">
                            <div class="image text-center">
                                <div class="image__thumbnail banner-feature">
                                    <img src="{{ @$value->image ?  url('/').@$value->image : __NO_IMAGE_DEFAULT__ }}"
                                    data-init="{{ __NO_IMAGE_DEFAULT__ }}">
                                    <a href="javascript:void(0)" class="image__delete" onclick="urlFileDelete(this)">
                                        <i class="fa fa-times"></i>
                                    </a>
                                    <input type="hidden" value="{{ @$value->image }}" name="content[feature][{{$key}}][image]" />
                                    <div class="image__button" onclick="fileSelect(this)">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="title-feature">
                            <label for="">Tiêu đề (h1)</label>
                            <input class="form-control" type="text" name="content[feature][{{$key}}][title]" value="{{ @$value->title }}">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group mt-3">
                    <div class="feature">
                        <div class="image text-center">
                            <div class="image text-center">
                                <div class="image__thumbnail banner-feature">
                                    <img src="{{ @$value->image2 ?  url('/').@$value->image2 : __NO_IMAGE_DEFAULT__ }}"
                                    data-init="{{ __NO_IMAGE_DEFAULT__ }}">
                                    <a href="javascript:void(0)" class="image__delete" onclick="urlFileDelete(this)">
                                        <i class="fa fa-times"></i>
                                    </a>
                                    <input type="hidden" value="{{ @$value->image2 }}" name="content[feature][{{$key}}][image2]" />
                                    <div class="image__button" onclick="fileSelect(this)">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="title-feature">
                            <label for="">Tiêu đề (h1)</label>
                            <input class="form-control" type="text" name="content[feature][{{$key}}][title2]" value="{{ @$value->title2 }}">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </td>
	<td class="remove-td-item" style="width: 0px;">
        <a href="javascript:void(0);" onclick="$(this).closest('tr').remove()" class="text-danger buttonremovetable" title="Xóa">
            <i class="fas fa-times"></i>
        </a>
    </td>
</tr>
