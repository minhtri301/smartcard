@foreach ($data as $item)
<li class=" item-list d-flex flex-row justify-content-between align-items-center position-relative" id="{{$item->id}}">
    <div>
        <a href="javascript:void(0);" class="show-preview" data-content="{{$item->content}}" data-type="{{$item->app->type}}" >
            <img src="{{asset($item->app->image ? $item->app->image  : __NO_IMAGE_DEFAULT__)}}" class="me-3 logo-icon" alt="icon" srcset=""></a>
        {{$item->app->name}} 
        @if($item->content)
        <img class="ms-3" src="{{asset('frontend/images/check.svg')}}" alt="" srcset="">
        @endif
    </div>
    <div class="dropdown">
        <a class="click-share" href="javascript:void(0);" id="dropdownMenuLink" data-bs-toggle="dropdown" aria-expanded="false">
            ...
        </a>
        <ul class="dropdown-menu dropdow-editor " aria-labelledby="dropdownMenuLink">
            <li>
                <a href="javascript:void(0);" class="dropdown-item get-edit" data-href="{{route('home.get.edit',$item->id)}}" >
                    <img src="{{asset('frontend/images/edit.svg')}}" alt="icon" srcset="">
                    Chỉnh sửa
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" class="dropdown-item delete-card" data-href="{{route('home.delete.card',$item->id)}}">
                    <img src="{{asset('frontend/images/delete.svg')}}" alt="icon" srcset="">
                    xóa
                </a>
            </li>
        </ul>
    </div>
</li>
@endforeach

<script>
    $('.get-edit').on('click',  function(e){
    e.preventDefault();
    const el = $(this); 
    const url = $(this).data("href"); 
    $.ajax({
        type: 'GET', 
        url: url,
        dataType: "json",
        success: function (data) {  
            $('#modal-edit').modal('show');
            $('#get_add_icon').html(data.html);
        },
    })
}) 

$('.delete-card').on('click', function(){
    const el = $(this); 
    const url = $(this).data("href"); 
    $.ajax({
        type: 'GET', 
        url: url,
        dataType: "json",
        success: function (data) {  
            Toast.fire({
                    icon: 'success',
                    title: data.message
            })
            $('#sortable').html(data.html);
        },
    })
}) 
$('.show-preview').on('click', function(e){
e.preventDefault();
const content = $(this).data("content"); 
const type = $(this).data("type"); 
if(type=='bank' || type=='phone'){
    if(type=='bank'){
        document.getElementById("bank").style.display = 'block';
        document.getElementById("phone").style.display = 'none';
    }else if(type=='phone'){
        document.getElementById("phone").style.display = 'block';
        document.getElementById("bank").style.display = 'none';
    }
    $('.icon-content').val(content);
    $('#show_preview').modal('show');
}
if(type=='link'){
    if(content!==''){
        window.open(content);
    }
}
})
</script>
