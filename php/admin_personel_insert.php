<?php
include "../connect/index.php";
if($_GET){

    $ad_soyad = $_GET['adsoyad']; // Ad Soyad
    $kulad = $_GET['kulad']; // Kullanıcı Adı
    $email = $_GET['email']; // E-Mail 
    $parola = $_GET['parola']; // Parola 
    $yetki = $_GET['yetki']; // Yetki (Personel-Admin)
    $durum = 0; // Durum (Çevrimdışı)
    
    $insert = mysql_query("INSERT INTO personel(ad,kullanici_ad,eposta,parola,yetki,durum) VALUES('$ad_soyad','$kulad','$email','$parola','$yetki','$durum')");
    if($insert){
        echo "Başarılı";
    }
    else{
        echo "Bi sorun var";
    }
}

?>

