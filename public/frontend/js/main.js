(function ($) {
    jQuery(function () {
        $(document).ready(function () {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
        });
        var modal = $(".modals");
        var modalpass = $(".modals-pass");
        var modalcode = $(".modals-code");
        var btn = $(".login.btn");
        var span = $(".close");

        btn.on('click', function () {
            modal.show();
            $('.passcheck').hide();
        });

        span.on('click', function () {
            $('#user_name').val(null);
            $('.passLogin').val(null);  
            $('.errorPass').hide();
            $('.errorUser').hide();
            $('.required').val(null);
            modal.hide();
            $('.password').val(null); 
            $('.repassword').val(null);      
            $('.passNew').hide();
            $('.repassNew').hide();
            modalpass.hide();
            $('#login-code-input').val(null);   
            $('.errorCode').hide();
            modalcode.hide();
        });

        $(window).on("click", function (e) {
            if ($(e.target).is(".modals")) {
                $('#user_name').val(null);
                $('.passLogin').val(null);  
                $('.errorPass').hide();
                $('.errorUser').hide();
                $('.required').val(null);
                modal.hide();
                $('.password').val(null); 
                $('.repassword').val(null);     
                $('.passNew').hide();
                $('.repassNew').hide(); 
                modalpass.hide();
                $('#login-code-input').val(null);   
                $('.errorCode').hide();
                modalcode.hide();
            }
        });
        $(window).on("click", function (e) {
            if ($(e.target).is(".modals-pass")) {
                $('#user_name').val(null);
                $('.passLogin').val(null);  
                modal.hide();
                $('.password').val(null); 
                $('.repassword').val(null);      
                modalpass.hide();
                $('#login-code-input').val(null);   
                modalcode.hide();
            }
        });
        $(window).on("click", function (e) {
            if ($(e.target).is(".modals-code")) {
                $('#user_name').val(null);
                $('.passLogin').val(null);  
                modal.hide();
                $('.password').val(null); 
                $('.repassword').val(null);      
                modalpass.hide();
                $('#login-code-input').val(null);   
                modalcode.hide();
            }
        });

        $(window).on("click", function (e) {
            if ($(e.target).is(".modal-form")) {
                $(".modal-form").hide();
            }
        });

        //todo Xử lý sau khi tắt modal
        $(document).on('hidden.bs.modal','.modal', function () {
            // hide error
            $('.errorSelect').hide();
            $('.errorInput').hide();

            // reset input
            $('#inputPhone').val(null);
            $('#inputBank').val(null);
            $('#inputLink').val(null);

            //reset select
            $("#id-bank").val('').trigger('change')
            $("#id-phone").val('').trigger('change')
            $("#id-link").val('').trigger('change')
        });

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
                        title: data.message,
                        customClass: {
                        timerProgressBar: 'bg-green',
                        }
                    })
                    $('#sortable').html(data.html);
                },
            })
        });

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
        });


        function updatePositions() {
            var positions = $("#sortable").sortable("toArray");
            $.ajax({
                type: 'GET', 
                url: '/card-update-position',
                data: {"positions": positions}, 
                dataType: "json",
                success: function (data){
                    Toast.fire({
                        iconColor: '#198754',
                        icon: 'success',
                        title: data.message,
                        customClass: {
                            title: 'cl-green',
                            timerProgressBar: 'bg-green',
                            popup: 'border-toast'
                        },
                    })
                }
            })
        }

        $("#sortable").sortable({
            stop: function(event, ui) {
                updatePositions();  
            }
        });

        $('.btn_send_contact').on('click', function(e){
            e.preventDefault();
            const el = $(this);
            var url = $('.php-email-form').attr('action');
            var data = $('.php-email-form').serialize();
            $.ajax({
                type: "POST", 
                url: url,
                data: data,
                dataType: "json",
                beforeSend: function (){
                    $('.sent-message').hide();
                    $('.loading').show();
                },
                success: function(data){
                    $('.loading').hide();
                    $('.fr-error').remove();
                    if(data.success == true){
                        el.parents('form').find('input').val(null);
                        el.parents('form').find('textarea').val(null);     
                        $('.sent-message').show();
                    };
                    if(data.success == false) {
                        $('.sent-message').hide();
                        $.each(data.errorMessage, function (field, item) {
                            var html_error = '<span class="fr-error d-block mb-3 mt-1" style="color:red"><i class="fas fa-exclamation-circle"></i> ' + item + '</span>';
                            if (field == 'content') {
                                el.parents('form').find('textarea').after(html_error);
                            } else {
                                el.parents('form').find('input[name="' + field + '"]').after(html_error);
                            }
                        });
                    }
                }
              
            })
        })
        
    });
})(jQuery);

$('.copyContent').on('click', function(){
    const element = $(this);
    var content = $(this).html(); 
    var link = $(this).data("href");
    if(link){
        var content =  link;
    }
    const storage = document.createElement('textarea');
    storage.value = content;
    element.append(storage);
    storage.select();
    storage.setSelectionRange(0, 99999);
    document.execCommand('copy');
    storage.remove();

    Toast.fire({
        icon: 'success',
        iconColor: '#198754',
        title: 'Đã sao chép',
        customClass: {
            timerProgressBar: 'bg-green',
            title: 'cl-green',
        }
    })
})


// show thông tin icon card trang information
$('.show-preview').on('click', function(e){
    e.preventDefault();
    const content = $(this).data("content"); 
    const type = $(this).data("type"); 
    var check = 0;
    $('.content').attr('data-content',content);
    if(type=='link'){
        window.open(content);
        var check = 1;
    }
    if(type=='bank'){
        var str = 'Số tài khoản ngân hàng';
    }
    if(type=='phone'){
        var str = 'Số điện thoại'
    }
    if(check == 0){
        $('.type').html(str);
        $('#show_preview').modal('show');
        $('.contentInfor').html(content)
    }
})


