<?php
	session_start();
	include_once('../../connection/connection.php');

	if(isset($_POST['edit'])){
		date_default_timezone_set('Asia/Manila');
		$id = $_POST['id'];
		$status = $_POST['status'];
	    $date = date('Y-m-d');
	    $user_id = $_POST['user_id'];
	    $activity = 'UPDATED REMOVED PRODUCTS PID:'.$id.'';


		// $sql1 = "INSERT INTO product_update_history (prod_id, old_name, new_name, old_price, new_price, old_qty, new_qty, date_updated, updated_by) VALUES ('$id', '$old_name', '$new_name', '$old_price', '$new_price', '$old_qty', '$new_qty', '$date_updated', '$updated_by')";
		$sql = "UPDATE tbl_product SET status = '$status' WHERE id = '$id'";
		$sql1 = "INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$user_id','$activity','$date')";

		//use for MySQLi OOP
		if($conn->query($sql) && $conn->query($sql1)){
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

	header('location: removed.php?user_id='.$updated_by);

?>