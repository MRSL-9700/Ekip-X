<?php
include "../connect/index.php";
session_start();
ob_start();


if($_POST){
    /* Kullanıcı Adı */
    $kulad = $_POST['kulad'];
    print($kulad);
    /* Parola */
    $parola = $_POST['sifre'];
    print($parola);
    date_default_timezone_set('Etc/GMT-3');
    $giris_tarih = date("Y:m:j");
    $giris_saat = date("H:i:s");
    /* Kullanıcı Bilgilerinin Doğrulama Sorgusu */
    $kul_sql = mysql_query("SELECT * FROM personel WHERE kullanici_ad='$kulad' AND parola='$parola' ");
    $row = mysql_num_rows($kul_sql);
    if($row > 0){
        $online_kul = mysql_query("UPDATE personel SET durum=1, giris_tarih='$giris_tarih', giris_saat='$giris_saat' WHERE kullanici_ad='$kulad' ");
        if($online_kul){
        $_SESSION['giris'] = $kulad;
            if($_SESSION['giris']){
                /* Sayfa Yönlendirme */    
                header("Location:../index.php");
            }
        }
    }
    else{ 
        /* Kullanıcı Bilgilerinin Doğrulama Sorgusu (Hatalı ise) */
        header("Location:../login.html");
    }
}


?>
