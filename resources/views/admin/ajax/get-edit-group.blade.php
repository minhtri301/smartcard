<div class="form-group">
    <label for="">Tên nhóm <span style="color: red">*</span></label>
    <div class="input-group"  data-target-input="nearest">
        <input type="text" class="form-control name" name="name" id="name" value="{{old('name',@$data->name)}}"  placeholder="Nhập tên" required>
    </div>
    <div class="errorName error" class="d-none"></div>
    <input type="text" class="hrefGroup d-none" data-href="{{route('groups.update',@$data->id)}}">
</div>
<div class="form-group">
    <label for="">Ngày tạo <span style="color: red">*</span></label>
    <div class="input-group date" id="datetimepicker4" data-target-input="nearest">
        <input type="text" name="date" id="date" value="{{$data->created_at->format('d/m/Y')}}" placeholder="dd/mm/yyyy" class="form-control datetimepicker-input test date" disabled/>
    </div>
</div>
<div class="form-group" >
    <label for="">Banner</label>
    <div class="image">
        <div class="image__thumbnail banner">
            <img src="{{old('image',@$data->image) ? old('image',@$data->image) : __NO_IMAGE_DEFAULT__}}"
                data-init="{{ __NO_IMAGE_DEFAULT__ }}">
            <a href="javascript:void(0)" class="image__delete"
                onclick="urlFileDelete(this)">
                <i class="fa fa-times"></i></a>
                <input type="hidden" name="image" value="{{old('image',@$data->image)}}" id="lat-span" />
            <div class="image__button" onclick="fileSelect(this)"></div>
        </div>
    </div>
    <div class="errorImage error" class="d-none"></div>
    {{-- @error('image') <span class="text-danger error">{{ $message }}</span>@enderror --}}
</div>
<div class="form-group">
    <label for="">Đường dẫn banner <small>(bao gồm http:// hoặc https://)</small></label>
    <div class="input-group"  data-target-input="nearest">
        <input type="text" class="form-control name" name="link" value="{{old('link',@$data->link)}}"  placeholder="Nhập đường dẫn">
    </div>
    <div class="errorLink error" class="d-none"></div>
</div>
<div class="form-group">
    <div class="repeater" id="repeater">
        <table class="" style="width: 100%">
            <?php if(!empty($data->title)){
                $contents = json_decode($data->title);
            } ?>
            @if(old('list'))
            <?php $contents = json_decode(json_encode(old('list'))); ?>
            @endif
            <thead>
                <tr>
                    <th>Mô tả</th>
                </tr>
            </thead>
            <tbody id="sortable">
                @if(@$contents)
                    @foreach ($contents as $key => $value)
                        @include('admin.repeater.row-title')
                    @endforeach
                @endif
            </tbody>
        </table>
        <div class="text-left" style="margin-bottom: 30px">
            <button class="btn btn-sm btn-info"  style="padding:3px 8px 2px; background-color: #50818b;"
                onclick="repeater(event,this,'{{ route('get.layout') }}','.index', 'title', '.title')">
                <i class="far fa-plus-circle" style="color: #ffffff;margin-right: 5px;"></i>Thêm mới
            </button>
        </div>
    </div>
</div>
<div class="form-group">
    <label for="">Sử dụng <span style="color: red">*</span></label>
    <div class="custom-control custom-switch">
       <input type="checkbox" class="custom-control-input status" id="customSwitch1" name="status" @if (@$data->status==1)checked @endif >
       <label class="custom-control-label" for="customSwitch1"></label>
    </div>
    @error('status') <span class="text-danger error">{{ $message }}</span>@enderror
</div>


