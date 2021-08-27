<?php
include "../connect/index.php";
session_start();
ob_start();
if($_SESSION['giris']){

    if($_GET){
        date_default_timezone_set('Etc/GMT-3');
        $is_id = $_GET['is_idsi'];
        $is_tarih = date("Y:m:j");
        $is_saat = date("H:i:s");

        
            $isler = mysql_query("SELECT * FROM isler Where id='$is_id' ");
                $row_isler = mysql_fetch_array($isler);
                    $is_durum = $row_isler['is_durum'];
        switch ($is_durum) {
            // Iş Bekleniyorsa
            case $is_durum == 1:
            $is_guncelle = mysql_query("UPDATE isler SET is_alinan_tarih='$is_tarih', is_alinan_saat='$is_saat', is_durum=2 WHERE id='$is_id'");
            header("Location:../benim_islerim.html");
            break;

            // Iş Alındıysa
            case $is_durum == 2:
            // Iş Tamamla
            $is_guncelle = mysql_query("UPDATE isler SET is_teslim_tarih='$is_tarih', is_teslim_saat='$is_saat', is_durum=3 WHERE id='$is_id'");
            header("Location:../benim_islerim.html");
            break;
            }
         
            

         $is_ad = $_GET['is_ad'];
         $personel_id = $_GET['personel'];
         $gorev_id = $_GET['gorev'];

            $insert = mysql_query("INSERT INTO isler(is_ad,is_kategori,is_durum,is_ait_personel,is_verildi_tarih,is_verilen_saat) VALUES('$is_ad','$gorev_id',1,'$personel_id','$is_tarih','$is_saat')");
            if($insert){ echo "İş Oluşturuldu.....";  }else{ echo "İş Oluşturma Başarısız"; }
         
    }else{ echo date('d.m.Y H:i:s');}

    
}else{
    header("location:../index.php");
    // Örnek sonuç: 19.11.2016 11:18:10
    echo date('d.m.Y H:i:s');
}




?>

    
        


