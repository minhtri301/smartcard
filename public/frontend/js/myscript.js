function onFileSelectedCover(event) {
    var selectedFile = event.target.files[0];
    var reader = new FileReader();
  
    var imgCover = document.getElementById("imageCoverUpload");
    imgCover.title = selectedFile.name;
  
    reader.onload = function (event) {
        imgCover.src = event.target.result;
    };
  
    reader.readAsDataURL(selectedFile);
  }
  
function onFileSelected(event) {
var selectedFile = event.target.files[0];
var reader = new FileReader();

var imgAvatar = document.getElementById("imageUpload");
imgAvatar.title = selectedFile.name;

reader.onload = function (event) {
    imgAvatar.src = event.target.result;
};

reader.readAsDataURL(selectedFile);
}

jQuery(function () {
    $('#id-phone').select2({
        dropdownParent: $('#add-phone'),
        templateResult: formatState,
        templateSelection: formatState
    });

    $('#id-link').select2({
        dropdownParent: $('#add-link'),
        templateResult: formatState,
        templateSelection: formatState
    });

    $('#id-bank').select2({
        dropdownParent: $('#add-bank'),
        templateResult: formatState,
        templateSelection: formatState
    });

    function formatState(state) {
        if (!state.id) {
            return state.text;
        }
        var imageUrl = $(state.element).data('thumbnail');
        var $state = $('<span><img src="' + imageUrl + '"  style="width: 20px; height: 20px;" /> ' + state.text + '</span>');
        return $state;
    }
});

//todo Format input code Login

$(document).ready(function() {
  $('#login-code-input').on('input', function(e) {
    var key = e.originalEvent.inputType;
    if (key === 'deleteContentBackward' || key === 'deleteContentForward') {
        return;
    }
    
    var loginCode = $(this).val();
    var formattedCode = loginCode.replace(/[^0-9a-zA-Z]/g, '');

    if (formattedCode.length > 1) {
      formattedCode = formattedCode.replace(/(.{1})/g, '$1-');
      console.log(formattedCode);
    }

    $(this).val(formattedCode.substr(0, 11).toUpperCase());
  }); 
});



