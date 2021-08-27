$(document).ready(function(){
    
    $.getJSON("json/is_atama_dosyalari/kisiler.php",function(data){
        
        $.each(data, function(key,value){

            $("#personelad").append(["<option value='"+value.id+"'>"+value.ad+"</option>"]);

        });
        
    });

    $.getJSON("json/is_atama_dosyalari/gorev.php",function(data){
         
        $.each(data, function(key, value){
            $("#gorev").append(["<option value='"+value.id+"'>"+value.gorev_ad+"</option>"]);
        });
        
    });
    
    $('#onayla').click(function(){
        
        var isad = $("#isadi").val();
        if(!isad){
            alert("İş Adı Boş Bırakma");
                $('#isadHelp').css("display","block");
                        return false;
        }else{
            var personelad = $("#personelad").val();
              if(!personelad){
                alert("Personel Seç");
                    $('#personeladHelp').css("display","block");
                        return false;
              }else{
                    var gorevad = $("#gorev").val();
                    if(!gorevad){
                        alert("Gorev Kategorisi Seç");
                            $("#gorevHelp").css("display","block");
                                return false;
                    }else{
                        $.get('php/admin_personel_is_yonetimi.php',{'is_ad': isad, 'personel': personelad, 'gorev': gorevad},function(data){
                           alert(data);
                        });
                    }
              }
        }

    });

});
