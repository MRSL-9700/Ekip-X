<?php

include ("../connect/index.php");
session_start();
ob_start();
if($_SESSION['giris']){
    $admin = $_SESSION['giris'];
        $personel_sql = mysql_query("SELECT * FROM personel WHERE kullanici_ad='$admin' "); $row = mysql_fetch_array($personel_sql);
            $id = $row['id'];
    
        date_default_timezone_set('Etc/GMT-3');
        $saat = date("H:i");
        $mesaj = $_POST['metin'];
        

        $sohbet_sql = mysql_query("SELECT * FROM sohbet"); while($row = mysql_fetch_array($sohbet_sql)){ $mesajlar = $row['sohbet_metin']; }

        if($mesaj == $mesajlar){
            echo "Aynı Mesajı Gönderiyorsun";
        }else{
            $insert = mysql_query("INSERT INTO sohbet(sohbet_metin,metin_ait_kisi,metin_saat) VALUES('$mesaj','$id','$saat')");
            if(!$insert){
                echo " Başarısız $mesaj";
            }
            else{
                
            }
            
        }
}
else{
    header("Location:../login.html");
}

?>