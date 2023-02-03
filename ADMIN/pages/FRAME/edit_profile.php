<?php
	session_start();
	include_once('../../connection/connection.php');

	if(isset($_POST['submit'])){
		$user_id  = $_POST['user_id']; 
		$fullname  = $_POST['fullname'];
		$email  = $_POST['email'];
		date_default_timezone_set('Asia/Manila');
		$date = date('Y-m-d');
		$activity = 'UPDATED PROFILE';
	
		$sql = "UPDATE users SET fullname = '$fullname', email = '$email' WHERE user_id = '$user_id'";
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

	header('location: ../index.php?view=MY ACCOUNT');

?>