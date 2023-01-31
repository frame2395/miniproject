<?php

$lastname= $_POST["nametype_prd"];



include('connection.php');

//สร้างคำสั่ง sql
$sql = "INSERT INTO tbl_product_type (nametype_prd) VALUES ('$lastname')";
if ($conn->query($sql)) {

 echo "New record created successfully";
 header('location:ins_formtype.php'); //กลับไปยังหน้าตาราง
} else {
 echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>