<?php
$name =$_POST["id_product_type"];
$lastname= $_POST["nametype_prd"];
$address= $_POST["S_Address"];
$SubjectName= $_POST["S_SubjectName"];

echo $name;
echo $lastname;
echo $address;
echo $SubjectName;
include('connection.php');

//สร้างคำสั่ง sql
$sql = "INSERT INTO tbl_customer (S_Name,S_LastName,S_Address,S_SunjectName) VALUES ('$name','$lastname','$address','$SubjectName')";
if ($conn->query($sql)) {
    
 echo "New record created successfully";
 header('location:index.php'); //กลับไปยังหน้าตาราง
} else {
 echo "Error: " . $sql . "<br>" . $conn->error;
}
$conn->close();
?>