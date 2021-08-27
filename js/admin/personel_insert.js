$(document).ready(function(){

  $('#onayla').click(function(){
  
    // Ad Soyad
    var adsoyad = $('#exampleInputName1').val();
    console.log(adsoyad);
    if(!adsoyad){
        alert("Ad Boş"); 
        return false;
    }
    else{
        // Kullanıcı Ad
        var Kullanıcı_ad = $('#exampleInputkulad1').val();
        console.log(Kullanıcı_ad);
        if(!Kullanıcı_ad){
            alert("Kullanıcı Adı Boş"); return false;
        }
        else{
            // Email Adress
            var email = $('#exampleInputEmail3').val();
            console.log(email);
            if(!email){
                alert("E-posta Boş"); return false;
            }
            else{
                // Parola
                var parola = $('#exampleInputPassword4').val();
                console.log(parola);
                if(!parola){
                    alert("Parola Boş"); return false;
                }
                else{
                    var yetki = $('#exampleInputYetki5').val();
                    console.log(yetki);
                    if(!yetki){
                        alert("Yetki Seç"); return false;
                    }
                    else{
                        $.get("php/admin_personel_insert.php",{'adsoyad': adsoyad, 'kulad': Kullanıcı_ad, 'email': email, 'parola': parola,'yetki': yetki},function(data) {
                            alert(data);
                        });
                        //personel_guncelle();
                    }
                }
            }
        }
    }


  });

});
