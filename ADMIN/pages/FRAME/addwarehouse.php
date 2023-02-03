<?php
	session_start();
	include_once('../../connection/connection.php');

	if(isset($_POST['Add'])){
		
		$pid = $_POST['id']; 
		$wid = $_POST['company'];
		$user_id = $_POST['user_id'];

		$sql = "INSERT INTO product_store (pid, wid) VALUES ('$pid', '$wid')";
		
		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'warehouse added successfully';
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

	header('location: index.php?user_id='.$user_id);

?>