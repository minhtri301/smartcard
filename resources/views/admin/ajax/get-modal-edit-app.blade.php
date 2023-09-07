<form action="{{route('apps.update', $data->id)}}"  method="post" >
    @csrf
    @method('put')
    <div class="modal-body">
        <div class="form-group" >
            <label for="">Tên ứng dụng <span class="text-danger">*</span></label>
            <div class="input-group"  data-target-input="nearest">
                <input type="text" class="form-control name" name="name" value="{{$data->name}}"  placeholder="Nhập tên" required>
            </div>
        </div>
        <div class="form-group" >
            <label for="">Loại: <span class="text-danger">*</span></label>
                <select name="type" class="form-control">
                    <option value="link" @if($data->type=='link') selected @endif>Liên kết</option>
                    <option value="sdt" @if($data->type=='phone') selected @endif>Số điện thoại</option>
                    <option value="bank" @if($data->type=='bank') selected @endif>Số tài khoản</option>
                </select>
        </div>
        <div class="form-group" >
            <label for="">Hình ảnh <small>Kích thước hình ảnh ( 72 x 72 )</small></label>
                <div class="image">
                    <div class="image__thumbnail app-image-icon" >
                        <img src="{{asset(@$data->image ? @$data->image : __NO_IMAGE_DEFAULT__)}}"
                            data-init="{{ __NO_IMAGE_DEFAULT__ }}">
                        <a href="javascript:void(0)" class="image__delete" 
                            onclick="urlFileDelete(this)">
                            <i class="fa fa-times"></i></a>
                            <input type="hidden" name="image" value="{{@$data->image}}" id="lat-span" />
                        <div class="image__button" onclick="fileSelect(this)">
                            </div>
                    </div>
                </div>
                @error('image') <span class="text-danger error">{{ $message }}</span>@enderror
        </div>
    </div>  
    <div class="modal-footer" >
        <input type="hidden" value="{{$data->id}}" name="id"> 
        <div class="float-lg-right">
            <button class="btn btn-outline-dark mr-2" data-dismiss="modal">
                <i class="far fa-times-circle"></i> Hủy
            </button>
            <button type="submit" class="btn btn-dark">
                <i class="fal fa-save"></i> Lưu
            </button>
        </div> 
    </div>    
</form> 