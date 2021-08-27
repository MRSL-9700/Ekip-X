$(document).ready(function(){

$.getJSON("json/menu.php",function(data){
    console.log(data);
    $.each(data, function(key,value){
        $('#sidebar_ul').append(['<li class="nav-item"><a class="nav-link" href="'+value.menu_link+'"><span class="menu-title">'+value.menu_ad+'</span><i class="'+value.menu_icon+'"></i></a></li>']);
    });
    
});

});