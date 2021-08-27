<?php

include "../../connect/index.php";

session_start();
ob_start();

if($_SESSION['giris'])
{
    $json = array();
    $admin = $_SESSION['giris'];
     $kullanici_bilgilerii = mysql_query("SELECT * FROM personel WHERE kullanici_ad='$admin'");
      $satir = mysql_fetch_array($kullanici_bilgilerii);
       $id = $satir['id'];

    $is_sql = mysql_query("SELECT i.id,i.is_ad,i.is_verildi_tarih,i.is_verilen_saat,i.is_alinan_tarih,i.is_alinan_saat,i.is_teslim_tarih,i.is_teslim_saat,p.ad,p.kullanici_ad,p.yetki,g.gorev_ad,i.is_durum,is_d.durum_ad,is_d.durum_icon,is_d.durum_sinif,is_d.durum_buton_sinif,is_d.durum_buton_icon,is_d.durum_buton_id FROM isler AS i LEFT JOIN gorev AS g ON i.is_kategori=g.id LEFT JOIN personel AS p ON i.is_ait_personel=p.id LEFT JOIN is_durumu AS is_d ON i.is_durum=is_d.id WHERE i.is_ait_personel='$id' ORDER BY i.id ASC ");
    while($is_rows = mysql_fetch_array($is_sql)){
        array_push($json,$is_rows);
    }
    echo json_encode($json);
}
else{
    header("location:../../login.html");
}
?>