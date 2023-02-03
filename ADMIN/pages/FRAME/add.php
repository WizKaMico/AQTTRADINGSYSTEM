<?php
	session_start();
	include_once('../../connection/connection.php');

	if(isset($_POST['add'])){
		
		$company_name = $_POST['company_name']; 
		$street_address = $_POST['street_address'];
		$city = $_POST['city'];
		$province = $_POST['province'];
		$user_id = $_POST['user_id'];

		$sql = "INSERT INTO ware_house (company_name, street_address, city, province) VALUES ('$company_name', '$street_address', '$city', '$province')";
		
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