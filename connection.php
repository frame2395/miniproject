<?php
	$host ="localhost";
    $username="id20152054_root";
    $password="]{5mi4xWm>Ks8Ya2";
    $dbname="id20152054_miniproject0040";

    //สร้างการเชื่อมต่อ
    $conn = new mysqli($host,$username,$password,$dbname);

    //ตรวจสอบการเชื่อต่อ
    if($conn->connect_error){
        die("Connection failed".$conn->connect_error);

    }
?>