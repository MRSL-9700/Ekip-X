$(document).ready(function(){

        
        $.getJSON("json/sohbet.php",function(data){
            $.each(data, function(key,value){
                $('#sohbet').append("<li id='mesaj' class='sagmesaj mb-3'><p style='float:left;'>  <i class='solavatar mr-2'> <img src='images/faces/"+value.profil+"' class='' style='border-radius:50%; width:90%;'></i> "+value.metin_saat+"</p><p style='float:right;' class='font'><b>"+value.ad+"</b></p><br><br><p style='float:right;'>"+value.sohbet_metin+"</p></li>");
            });
        
        });
        
        setInterval(function(){
            $('li#mesaj').remove();
            $.getJSON("json/sohbet.php",function(data){
                $.each(data, function(key,value){
                    $('#sohbet').append("<li id='mesaj' class='sagmesaj mb-3'><p style='float:left;'>  <i class='solavatar mr-2'> <img src='images/faces/"+value.profil+"' class='' style='border-radius:50%; width:90%;'></i> "+value.metin_saat+"</p><p style='float:right;' class='font'><b>"+value.ad+"</b></p><br><br><p style='float:right;'>"+value.sohbet_metin+"</p></li>");
                });
        
            });
        },4500);

        function yeni_mesaj(){
            
                $('li#mesaj').remove();
                $.getJSON("json/sohbet.php",function(data){
                    $.each(data, function(key,value){
                        $('#sohbet').append("<li id='mesaj' class='sagmesaj mb-3'><p style='float:left;'>  <i class='solavatar mr-2'> <img src='images/faces/"+value.profil+"' class='' style='border-radius:50%; width:90%;'></i> "+value.metin_saat+"</p><p style='float:right;' class='font'><b>"+value.ad+"</b></p><br><br><p style='float:right;'>"+value.sohbet_metin+"</p></li>");
                    });
            
                });
            
        }


        
        $('#chat_open').click(function(){
            $('#chat_window').css('display','block');
        });
        
        
        $('#close').click(function(){
            $('#chat_window').css('display','none');
        });

        $('#message_submit').click(function(){

            var message = $('#message_input').val();
            if(!message){
                alert("Boş Gönderme Yapma");
                return false;
            }
            else{
                $.post('php/mesaj_insert.php',{'metin': message},function(data){
                    alert(data);
                    yeni_mesaj();
                    
                    return false;
                    
                  });
            }
            
        });
});

