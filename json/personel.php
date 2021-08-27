<?php

include "../connect/index.php";
 session_start();
 ob_start();   

if($_SESSION['giris']){ // Giriş Yapan varsas
    
            $json = array();    
        $kulad_query = mysql_query("SELECT * FROM personel AS p LEFT JOIN durum AS d ON p.durum=d.id LEFT JOIN yetki AS y ON p.yetki=y.id");
        while($row = mysql_fetch_array($kulad_query)){
            array_push($json,$row);
        }
            echo json_encode($json);


    
}
else{
    return false;
    }






