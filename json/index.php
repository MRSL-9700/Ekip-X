<?php

include "../connect/index.php";
session_start();
ob_start();
if($_SESSION['giris']){
    $json = array();
    $admin = $_SESSION['giris'];
    
    $kulad_query = mysql_query("SELECT * FROM personel Where kullanici_ad='$admin' ");
    $row = mysql_fetch_array($kulad_query);
        array_push($json,$row);

        echo json_encode($json);
    
}else{
    header("Location:../login.html");
}