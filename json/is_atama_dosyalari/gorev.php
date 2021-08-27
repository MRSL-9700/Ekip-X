<?php
include "../../connect/index.php";


session_start();
ob_start();

if($_SESSION['giris']){
    
    $json= array();
    $gorev = mysql_query("SELECT * FROM gorev");
    
    while($gorev_rows = mysql_fetch_array($gorev)){
        array_push($json,$gorev_rows);

    }
    echo json_encode($json);


}else{
    header("location:../../login.html");
}

?>