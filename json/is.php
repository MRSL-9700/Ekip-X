<?php

function isler_admin(){
    
    $json = array();
    $is_query = mysql_query("SELECT i.id,i.is_ad,i.is_verildi_tarih,i.is_verilen_saat,i.is_alinan_tarih,i.is_alinan_saat,i.is_teslim_tarih,i.is_teslim_saat,p.ad,p.kullanici_ad,p.yetki,g.gorev_ad,i.is_durum,is_d.durum_ad,is_d.durum_icon,is_d.durum_sinif   FROM isler AS i LEFT JOIN gorev AS g ON i.is_kategori=g.id LEFT JOIN personel AS p ON i.is_ait_personel=p.id LEFT JOIN is_durumu AS is_d ON i.is_durum=is_d.id ");
     while($row = mysql_fetch_array($is_query)){
      array_push($json,$row);
       }
        echo json_encode($json);
}


include ("../connect/index.php");
session_start();
ob_start();
if($_SESSION['giris']){
    
    $admin = $_SESSION['giris'];
     $kullanici_bilgilerii = mysql_query("SELECT * FROM personel AS p LEFT JOIN yetki AS y ON p.yetki=y.id");
      $satir = mysql_fetch_array($kullanici_bilgilerii);
       $yetki = $satir['yetki'];
        isler_admin();
}
else{

    header("Location:../login.html");

}


