<div class="form-group">
    <label for="">Tên nhóm <span style="color: red">*</span></label>
    <div class="input-group"  data-target-input="nearest">
        <input type="text" class="form-control name" name="name" value="{{old('name')}}"  placeholder="Nhập tên" >
    </div>
    <div class="errorName error" class="d-none"></div>
</div>

<div class="form-group">
    <label for="">Ngày tạo <span style="color: red">*</span></label>
    <div class="input-group">
        <input type="text" value="{{date('d/m/Y')}}" class="form-control" disabled/>
    </div>
</div>

<div class="form-group" >
    <label for="">Banner</label>
        <div class="image">
            <div class="image__thumbnail banner">
                <img src="{{ old('image', @$image) ? old('image', @$image) : __NO_IMAGE_DEFAULT__}}"
                    data-init="{{ __NO_IMAGE_DEFAULT__ }}">
                <a href="javascript:void(0)" class="image__delete"
                    onclick="urlFileDelete(this)">
                    <i class="fa fa-times"></i>
                </a>
                <input type="hidden" name="image" value="" id="lat-span" />
                <div class="image__button" onclick="fileSelect(this)"></div>
            </div>
        </div>
        <div class="errorImage error" class="d-none"></div>
</div>

<div class="form-group">
    <label for="">Đường dẫn banner <small>(bao gồm http:// hoặc https://)</small></label>
    <div class="input-group"  data-target-input="nearest">
        <input type="text" class="form-control link" name="link" value="{{old('link')}}"  placeholder="Nhập đường dẫn" >
    </div>
    <div class="errorLink error" class="d-none"></div>
</div>

<div class="form-group">
    <div class="repeater" id="repeater">
        <table class="" style="width: 100%;">
             @if(old('list'))
             <?php $contents = json_decode(json_encode(old('list'))); ?>
             @endif
            <thead>
                <tr>
                    <th>Mô tả</th>
                </tr>
            </thead>
            <tbody id="sortable">
            </tbody>
        </table>
        <div class="text-left mb-3">
            <button class="btn btn-xs btn-danger" onclick="repeater(event,this,'{{ route('get.layout') }}','.index', 'title', '.title')" >
                <i class="far fa-plus-circle"></i> Thêm mới
            </button>
        </div>
    </div>

</div>

<div class="form-group">
    <label for="">Sử dụng <span style="color: red">*</span></label>
    <div class="custom-control custom-switch">
       <input type="checkbox" class="custom-control-input status" id="customSwitch2" name="status">
       <label class="custom-control-label" for="customSwitch2"></label>
    </div>
</div>




