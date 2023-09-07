<?php $key  = isset($key) ? $key : (int) round(microtime(true) * 1000); ?>
<tr>
    <td>
        <div class="row align-items-center">
            <div class="col-lg-3 col-md-5 col-sm-12 mb-3">
                <div class="text-center">
                    <label>Hình ảnh nền khối</label>
                    <div class="image text-center">
                        <div class="image__thumbnail banner banner-feature" >
                            <img src="{{ @$value->image ?  url('/').@$value->image : __NO_IMAGE_DEFAULT__ }}"
                                data-init="{{ __NO_IMAGE_DEFAULT__ }}">
                            <a href="javascript:void(0)" class="image__delete" onclick="urlFileDelete(this)">
                                <i class="fa fa-times"></i>
                            </a>
                            <input type="hidden" value="{{ @$value->image }}" name="content[previews][{{$key}}][image]" />
                            <div class="image__button" onclick="fileSelect(this)">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-7 col-sm-12">    
                <div class="form-group form-groupp-with">
                    <label for="">Tên người đánh giá</label>
                    <input class="form-control" type="text" name="content[previews][{{$key}}][name]" value="{{ @$value->name }}">
                </div>
                <div class="form-group form-groupp-with">
                    <label for="">Vai trò</label>
                    <input class="form-control" type="text" name="content[previews][{{$key}}][role]" value="{{ @$value->role }}">
                </div>
            </div>
            <div class="col-lg-6 col-md-7 col-sm-12">    
                <div class="form-group form-groupp-with">
                    <label for="">Đánh giá</label>
                    <textarea class="form-control" name="content[previews][{{$key}}][text]" id="" rows="5">{{ @$value->text }}</textarea>
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
