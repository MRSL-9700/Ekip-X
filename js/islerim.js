$(document).ready(function(){

    $.getJSON("json/benim_islerim/islerim.php", function(data){        
        
        $.each(data, function(key, value){

            $("#my_islerim").append(" <tr id='islerim'>  <td>"+value.id+"</td> <td>"+value.is_ad+"</td> <td>"+value.gorev_ad+"</td> <td> <span class='"+value.durum_sinif+"'> <i class='"+value.durum_icon+"'></i> "+value.durum_ad+"</span> </td> <td> <a href='php/admin_personel_is_yonetimi.php?is_idsi="+value.id+"' class='"+value.durum_buton_sinif+"'> Onayla </a> </td>  </tr>");

        });

    });

/*    setInterval(function(){
            $('#islerim').remove();
            $.getJSON("json/benim_islerim/islerim.php", function(data){        
        
                $.each(data, function(key, value){
        
                    $("#my_islerim").append(" <tr id='islerim'>  <td>"+value.id+"</td> <td>"+value.is_ad+"</td> <td>"+value.gorev_ad+"</td> <td> <span class='"+value.durum_sinif+"'> <i class='"+value.durum_icon+"'></i> "+value.durum_ad+"</span> </td> <td> <a href='php/admin_personel_is_yonetimi.php?is_idsi="+value.id+"' class='"+value.durum_buton_sinif+"'> Onayla </a> </td>  </tr>");
        
                });
        
            });
        },6000);
*/
    
});