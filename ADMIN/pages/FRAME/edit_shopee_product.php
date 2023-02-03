<?php
	session_start();
	include_once('../../connection/connection.php');

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$old_name = $_POST['old_name'];
		$new_name = $_POST['new_name'];
		$old_price = $_POST['old_price'];
		$new_price = $_POST['new_price'];
		$old_qty = $_POST['old_qty'];
		$new_qty = $_POST['new_qty'];
		$date_updated = $_POST['date_updated'];
		$type = $_POST['type'];
		$updated_by = $_POST['updated_by'];
		$activity = 'CHANGED PRODUCT LAZADA DETAILS PROD.ID:'.$id.'';

		if($type == 'RESTOCK'){

		$overall = $old_qty + $new_qty;  

		$sql1 = "INSERT INTO shopee_product_update_history (prod_id, old_name, new_name, old_price, new_price, old_qty, new_qty, type, overall, date_updated, updated_by) VALUES ('$id', '$old_name', '$new_name', '$old_price', '$new_price', '$old_qty', '$new_qty', '$type', '$overall', '$date_updated', '$updated_by')";
		$sql = "UPDATE shopee_product SET product_name = '$new_name', price = '$new_price', qty = '$overall' WHERE id = '$id'";
		$sql3 = "INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$updated_by','$activity','$date_updated')";

	   }else if($type == 'PRICE INCREASE' OR $type == 'PRICE DECREASE'){ 

	   	$overall = 0;

	   	$sql1 = "INSERT INTO shopee_product_update_history (prod_id, old_name, new_name, old_price, new_price, old_qty, new_qty, type, overall, date_updated, updated_by) VALUES ('$id', '$old_name', '$new_name', '$old_price', '$new_price', '$old_qty', '$new_qty', '$type', '$overall', '$date_updated', '$updated_by')";
		$sql = "UPDATE shopee_product SET product_name = '$new_name', price = '$new_price', qty = '$new_qty' WHERE id = '$id'";
		$sql3 = "INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$updated_by','$activity','$date_updated')";

	   }else{

	   	$overall = $old_qty - $new_qty; 

	   	$sql1 = "INSERT INTO shopee_product_update_history (prod_id, old_name, new_name, old_price, new_price, old_qty, new_qty, type, overall, date_updated, updated_by) VALUES ('$id', '$old_name', '$new_name', '$old_price', '$new_price', '$old_qty', '$new_qty', '$type', '$overall', '$date_updated', '$updated_by')";
		$sql = "UPDATE shopee_product SET product_name = '$new_name', price = '$new_price', qty = '$overall' WHERE id = '$id'";
		$sql3 = "INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$updated_by','$activity','$date_updated')";


	   }

		//use for MySQLi OOP
		if($conn->query($sql) && $conn->query($sql1) && $conn->query($sql3)){
			$_SESSION['success'] = 'product updated successfully';
		}
		///////////////

		//use for MySQLi Procedural
		// if(mysqli_query($conn, $sql)){
		// 	$_SESSION['success'] = 'Member updated successfully';
		// }
		///////////////
		
		else{
			$_SESSION['error'] = 'Something went wrong in updating product';
		}
	}
	else{
		$_SESSION['error'] = 'Select product to edit first';
	}

	header('location: shopee_login.php');

?>