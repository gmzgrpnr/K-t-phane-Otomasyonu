<?php
	$db_name = "kutuphaneotomasyon";
	$db_user = "root";
	$db_pass = "12345678";
	$db_host = "localhost";
	$baglanti = mysqli_connect($db_host, $db_user, $db_pass, $db_name) or die("Veritabanı bağlantı hatası!");
	$baglanti->query("SET NAMES utf8");
?>
