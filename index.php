<?php
require("connect/index.php");
session_start();
ob_start();

if(!$_SESSION["giris"]){
  header("location:login.html");
}else{
  $Kulad_Cookie = setcookie('kulad',md5($_SESSION['giris'])); // Cookie Tam yarım dakika boyunca aktif "Tabiki Çıkış Yapılmadığı Sürece".......
  $sql = mysql_query("SELECT * FROM personel"); $row = mysql_fetch_array($sql); $yetki=$row['yetki']; $profil=$row['profil'];
  $Profil_Cookie = setcookie('profil',$profil);
  $Yetki_Cookie = setcookie('yetki',md5($yetki)); // Cookie Tam yarım dakika boyunca aktif "Tabiki Çıkış Yapılmadığı Sürece"....... 
  if($Yetki_Cookie){
        header("Location:dashboard.html");
    
  }
}

?>