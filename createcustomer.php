<?php
$name =$_POST["id_product"];
$lastname= $_POST["N_nameprd"];
$address= $_POST["S_Address"];
$SunjectName= $_POST["S_SubjectName"];

include('connection.php');

//สร้างคำสั่ง sql
$sql = "INSERT INTO tbl_product (id_product,N_nameprd,S_Address,S_SubjectName) VALUES ('$name','$lastname','$address','$SubjectName')";
if ($conn->query($sql)) {
    
 echo "New record created successfully";
 header('location:index.php'); //กลับไปยังหน้าตาราง
} else {
 echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>