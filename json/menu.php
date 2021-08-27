<?php

include ("../connect/index.php");
session_start();
ob_start();
if($_SESSION['giris']){
    $json = array();
    $admin = $_SESSION['giris'];
     $kullanici_bilgilerii = mysql_query("SELECT * FROM personel WHERE kullanici_ad='$admin'");
      $satir = mysql_fetch_array($kullanici_bilgilerii);
       $yetki = $satir['yetki'];
    
        switch ($yetki) {
            case $yetki == 1:
                    $menu_sql_1 = mysql_query("SELECT * FROM menu Where menu_yetki=1 OR menu_yetki=2 OR menu_yetki=3 ");
                    while($satir = mysql_fetch_array($menu_sql_1)){
                        array_push($json,$satir);
                    }
                    echo json_encode($json);
            break;
            
            case $yetki == 2:
                    $menu_sql_2 = mysql_query("SELECT * FROM menu WHERE menu_yetki=2 OR menu_yetki=3 ");
                    while($satir = mysql_fetch_array($menu_sql_2)){
                    array_push($json,$satir);
                    }
                    echo json_encode($json);
            break;
            
            case $yetki == 3:
                    $menu_sql_3 = mysql_query("SELECT * FROM menu Where menu_yetki=3 ");
                    while($satir = mysql_fetch_array($menu_sql_3)){
                        array_push($json,$satir);
                    }
                    echo json_encode($json);
            break;
        }

}else{
    header("location:dashboard.html");
}
?>
