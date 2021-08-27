$(document).ready(function(){
    $.getJSON("json/",function(data){
        $.each(data, function(key,value){
            $('#user_ad').append(value.ad);
            $('#user_isim').append(value.ad);
            $("#user_profil").attr("src","images/faces/"+value.profil);
            $("#user_profile").attr("src","images/faces/"+value.profil);
        });
    });
});