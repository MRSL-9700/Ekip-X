<?php

include ("../connect/index.php");


session_start();
ob_start();

if($_SESSION['giris'])
{
    $json = array();
    $sohbet = mysql_query("SELECT * FROM sohbet AS s LEFT JOIN personel AS p ON s.metin_ait_kisi=p.id ORDER BY s.id  DESC");
    while($rows = mysql_fetch_array($sohbet))
    {
        array_push($json,$rows);
    }
    echo json_encode($json);
}
else{
    header("Location:../login.html");
}