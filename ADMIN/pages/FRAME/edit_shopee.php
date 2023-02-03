<?php
	session_start();
	include_once('../../connection/connection.php');

	if(isset($_POST['edit'])){
		$sh_id  = $_POST['sh_id']; 
		$category  = $_POST['category'];
		$weight  = $_POST['weight'];
		$length  = $_POST['length'];
		$width  = $_POST['width'];
		$height  = $_POST['height'];
		$updated_by  = $_POST['updated_by'];

		date_default_timezone_set('Asia/Manila');
		$date_added = date('Y-m-d');
		$activity = 'SHOPEE APPROVED FOR API PROD: '.$sh_id.'';

	    
	       $sql1 = "INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$updated_by','$activity','$date_added')";   
		$sql = "UPDATE shopee_convert SET category = '$category', weight = '$weight', length = '$length', width = '$width', height = '$height'  WHERE sh_id = '$sh_id'";

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

	header('location: shopee.php?user_id='.$updated_by);

?>