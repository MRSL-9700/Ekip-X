<?php
include "../../connect/index.php";


session_start();
ob_start();

if($_SESSION['giris']){
    
    $json= array();
    $kisi = mysql_query("SELECT * FROM personel");
    
    while($kisi_rows = mysql_fetch_array($kisi)){
        array_push($json,$kisi_rows);

    }
    echo json_encode($json);


}else{
    header("location:../../login.html");
}

?>