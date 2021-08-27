$(document).ready(function(){
    $("#logout").click(function(){
        $.cookie('kulad', '', { expires: -1 }); $.cookie('yetki', '', { expires: -1 }); $.cookie('profil', '', { expires: -1 }); window.location = "php/logout.php";
    });
});