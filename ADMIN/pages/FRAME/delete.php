<?php
	session_start();
	include_once('../../connection/connection.php');

	if(isset($_POST['delete'])){
		$id  = $_POST['id'];
		$sku = $_POST['sku'];
		$product_name = $_POST['product_name'];
		$price = $_POST['price'];
		$qty = $_POST['qty'];
		$date_created = $_POST['date_created'];
		$removed_by = $_POST['removed_by'];
		$activity = 'REMOVED PRODUCT-SKU:'.$sku.'';

		$sql = "UPDATE tbl_product SET status = 1 WHERE id = '$id'";
		$sql1 = "INSERT INTO `delete_history` (sku, name, price, qty, photo, date_created, deleted_by) VALUES('$sku', '$product_name', '$price', '$qty', '$path', '$date_created', '$removed_by')";
		$sql3 = "INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$id','$activity','$date_created')";

		//use for MySQLi OOP
		if($conn->query($sql) && $conn->query($sql1) && $conn->query($sql3)){
			$_SESSION['success'] = 'Removed successfully';
		}
		////////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member deleted successfully';
		// }
		/////////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in removing member';
		}
	}
	else{
		$_SESSION['error'] = 'Select member to delete first';
	}
	header("location: index.php?user_id=".$updated_by);
?>