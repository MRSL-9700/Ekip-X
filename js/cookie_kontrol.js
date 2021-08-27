// Cookie Varmı || Yokmu

$(document).ready(function(){

    if(!$.cookie('kulad')){
        window.location = "login.html";

    }
    else{
        return false; 
    } 
});