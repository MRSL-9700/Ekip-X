<?php
include "../connect/index.php";
session_start();
ob_start();
if($_SESSION['giris']){
    $admin = $_SESSION['giris'];
    $online_kul = mysql_query("UPDATE personel SET durum=0 WHERE kullanici_ad='$admin' ");
    if($online_kul){
        session_destroy();
        header("location:../index.php");
    }

}

?>