// Yeni Personel Kayıtlar
function personel_guncel_1(){
    setInterval(function(){
        $('tr#oku').remove();    
		$.getJSON("json/personel.php", function(data){
			
			$.each(data, function(key,value){
				$('#personel').append("<tr id='oku'> <td>"+value.ad+"</td> <td title='durum'>"+value.yetki_ad+"</td> <td> <span class='"+value.ikon+"'></span>"+value.durum+"</td> </tr>");
			});
		});
	});
}


// Yeni Is Kayıtları
function is_guncel_1(){
	
	setInterval(function(){
		
	$('tr#isoku').remove();

	$.getJSON("json/is.php", function(data) {
		if(!data){
			return false;
		}else{
			$.each(data, function(key, value){
				$('#is').append(["<tr id='isoku'><td title='İşin Adı'>"+value.is_ad+"</td><td title='İşe Yetkilendirilen'>"+value.ad+"</td><td title='kisi Kategori'>"+value.kisi_ad+"</td><td title='İs Durum'> <span class='"+value.durum_sinif+"' ><i class='"+value.durum_icon+"'></i> "+value.durum_ad+"</span></td></tr>"]);
			});
		}
	});

	});
}

$(document).ready(function(){



	// Personeller Start

    $.getJSON("json/personel.php", function(data){
        if(!data){
            $('#personel_kontrol').css('display','none');
        }else{
            $.each(data, function(key, value){ 
                $('#personel').append("<tr id='oku'> <td>"+value.ad+"</td> <td title='durum'>"+value.yetki_ad+"</td> <td> <span class='"+value.ikon+"'></span>"+value.durum+"</td> <td colspan='2' style='font-size:12px; text-weight:underline;' title='En Son Aktif Olduğu Tarih Ve Saat'> "+value.giris_tarih+"  \r "+value.giris_saat+" </td> </tr>");    
                            
            });
        }
    });
	setInterval(function(){
        $('tr#oku').remove();    
		$.getJSON("json/personel.php", function(data){
			
			$.each(data, function(key,value){
				$('#personel').append("<tr id='oku'> <td>"+value.ad+"</td> <td title='durum'>"+value.yetki_ad+"</td> <td> <span class='"+value.ikon+"'></span>"+value.durum+"</td> <td colspan='2' style='font-size:12px; text-weight:underline;' title='En Son Aktif Olduğu Tarih Ve Saat'> "+value.giris_tarih+"  \r "+value.giris_saat+" </td> </tr>");
			});
		});
	}, 36000);
						
	// Personeller Finish



	// Is'leri Yazdırma Start
	
	$.getJSON("json/is.php", function(data) {
		if(!data){
			return false;
		}else{
			
			$.each(data, function(key, value){
				
				$('#is').append(["<tr id='isoku'> <td title='İşin Adı'>"+value.is_ad+"</td><td title='İşe Yetkilendirilen'>"+value.ad+"</td><td title='kisi Kategori'>"+value.gorev_ad+"</td> <td title='"+value.is_verilen_saat+"'>"+value.is_verildi_tarih+"</td> <td title='"+value.is_alinan_saat+"'>"+value.is_alinan_tarih+"</td><td title='"+value.is_teslim_saat+"'>"+value.is_teslim_tarih+"</td><td title='İs Durum'> <span class='"+value.durum_sinif+"' ><i class='"+value.durum_icon+"'></i> "+value.durum_ad+"</span></td></tr>"]);
			});
		}
	});
	
	setInterval(function(){
		
		$('tr#isoku').remove();
	
		$.getJSON("json/is.php", function(data) {
			if(!data){
				return false;
			}else{
				$.each(data, function(key, value){
					$('#is').append(["<tr id='isoku'> <td title='İşin Adı'>"+value.is_ad+"</td><td title='İşe Yetkilendirilen'>"+value.ad+"</td><td title='kisi Kategori'>"+value.gorev_ad+"</td> <td title='"+value.is_verilen_saat+"'>"+value.is_verildi_tarih+"</td> <td title='"+value.is_alinan_saat+"'>"+value.is_alinan_tarih+"</td><td title='"+value.is_teslim_saat+"'>"+value.is_teslim_tarih+"</td><td title='İs Durum'> <span class='"+value.durum_sinif+"' ><i class='"+value.durum_icon+"'></i> "+value.durum_ad+"</span></td></tr>"]);
				});
			}
		});
	
		},36000);
	
	//is_guncel_1();



	// Is'leri Yazdırma Finish




    
	

});