<?php
	session_start();
	include_once('../../connection/connection.php');

	if(isset($_POST['add'])){
		
		$size = $_POST['size']; 
		
		$sql = "INSERT INTO tbl_size (size) VALUES ('$size')";
		
		//use for MySQLi OOP
		if($conn->query($sql)){
			$_SESSION['success'] = 'size added successfully';
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