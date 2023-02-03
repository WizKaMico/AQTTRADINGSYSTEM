<?php

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

	include '../../connection/connection.php';
	if(ISSET($_POST['save'])){
		$image_name = $_FILES['photo']['name'];
		$image_temp = $_FILES['photo']['tmp_name'];
		$code = $_POST['sku'];
		$price = $_POST['price'];
		$product_name = $_POST['product_name'];
		$qty = $_POST['qty'];
		$size = $_POST['size'];
		$category = $_POST['category']; 
		$date_created = $_POST['date_created'];
		$expiration_date = $_POST['expiration_date'];
		$created_by = $_POST['created_by'];
		$status = 0;
		$activity = 'ADDED A PRODUCT';
		$exp = explode(".", $image_name);
		$end = end($exp);
		$name = time().".".$end;
		if(!is_dir("./upload"))
			mkdir("upload");
		$path = "upload/".$name;
		$allowed_ext = array("gif", "jpg", "jpeg", "png");
		if(in_array($end, $allowed_ext)){
			if(move_uploaded_file($image_temp, $path)){
				 mysqli_query($conn,"INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$created_by','$activity','$date_created')");  
				mysqli_query($conn, "INSERT INTO `tbl_product` (code, name, price, qty, photo, expiration_date, date_created, created_by, size, status, category) VALUES('$code', '$product_name', '$price', '$qty', '$path', '$expiration_date', '$date_created', '$created_by', '$size', '$status', '$category')") or die(mysqli_error());
				echo "<script>alert('User account saved!')</script>";
				header("location: ../index.php?view=PRODUCTS");
			}	
		}else{
			
			header("location: ../index.php?view=PRODUCTS&response=ERR");
		}
	}
?>