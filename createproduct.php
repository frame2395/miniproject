<?php
$name =$_POST["id_product"];
$lastname= $_POST["N_nameprd"];
$address= $_POST["price"];
$SunjectName= $_POST["dateprd"];

include('connection.php');

//สร้างคำสั่ง sql
$sql = "INSERT INTO tbl_product (id_product,N_nameprd,price,dateprd) VALUES ('$name','$lastname','$address','$SunjectName')";
if ($conn->query($sql)) {
    
 echo "New record created successfully";
 header('location:index.php'); //กลับไปยังหน้าตาราง
} else {
 echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>