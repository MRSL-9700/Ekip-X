$(document).ready(function(){
    $("#login_submit").click(function(){
        username = $("#kullanici").val();
          password = $("#parola").val();
          //beniHatirla = $('#customCheck1:checked').val();
          //console.log("Beni Hatırla:"+beniHatirla);
            if(!username == null || !username == ""){
                if(!password == null || !password == ""){
                    $.post("php/login.php",{'kulad': username,'sifre': password},function(data){
                        window.location = "index.php";
                        if(!data){
                            alert("Kullanıcı Bulunamadı..");
                            
                        }
                    });
                }
                else{
                    alert("Parola Bilgileri Boş (Kontrol Edin)");
                    return false;
                }
            }   
            else{
                alert("Kullanıcı Adı Bilgileri Boş (Kontrol Edin)");
                return false;
            }
    });
});