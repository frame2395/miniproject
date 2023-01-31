<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Page</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
</head>
<body>
    
    <div class="container">
        <a href="index.php" class="btn btn-primary mt-3">Go Back</a>
        <hr>
        <h1 class="mt-5">เพิ่มข้อมูลสินค้า</h1>
        <hr>
        
<div class="mb-3">
<form  action="createproduct.php" method="post">
            <div class="mb-3">
                <label for="id_product" class="form-label">รหัสสินค้า</label>
                <input type="id_product" class="form-control" name="id_product" required>
            </div>
            <div class="mb-3">
                <label for="N_nameprd" class="form-label">ชื่อสินค้า</label>
                <input type="N_nameprd" class="form-control" name="N_nameprd" required>
            </div>
            <div class="mb-3">
                <label for="price">ราคาสินค้า</label>
                <input type="price" class="form-control" name="price" required>
            </div>
            <div class="mb-3">
            <label for="price">วันที่ผลิต</label>
                <input type="dateprd" class="form-control" name="dateprd" required>
            </div>
            <div class="mb-3">
            </div>
            <button type="submit">Create</button>
            <a class="btn" href="index.php">Back</a>
            </form>
            </div>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</body>
</html>