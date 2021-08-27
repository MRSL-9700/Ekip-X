<?php
		$hostname = "localhost";
		$username = "ekipx";
		$password = "ekipx";
		$veritabani = "ekipx";

		$baglan = mysql_connect($hostname, $username, $password) or die (mysql_error());
		$baglan_mysql = mysql_select_db($veritabani, $baglan) or die (mysql_error());

		mysql_query("SET NAMES 'utf8'");
		mysql_query("SET CHARACTER SET utf8");
		mysql_query("SET COLLATION_CONNECTION = 'utf8_turkish_ci'");

?>
