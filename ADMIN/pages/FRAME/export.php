<?php
	session_start();
	//connection
	include_once('../../connection/connection.php');
	$user_id = $_GET['user_id'];
 
	$sql = "SELECT * FROM tbl_product";
	$query = $conn->query($sql);
 
	if($query->num_rows > 0){
		$delimiter = ',';
		//create a download filename
		date_default_timezone_set('Asia/Manila');
		$date = date('Y-m-d');
		$filename = 'aqtmanagement-product-"'.$date.'".csv';
 
		$f = fopen('php://memory', 'w');
 
		$headers = array('ID', 'SKU', 'PRODUCT NAME', 'PRICE', 'QUANTITY', 'DATE CREATED');
    	fputcsv($f, $headers, $delimiter);
 
    	while($row = $query->fetch_array()){
	        $lines = array($row['id'], $row['code'], $row['name'], $row['price'], $row['qty'], $row['date_created']);
	        fputcsv($f, $lines, $delimiter);
	    }
 
	    fseek($f, 0);
	    header('Content-Type: text/csv');
	    header('Content-Disposition: attachment; filename="' . $filename . '";');
	    fpassthru($f);
	    exit;
	}
	else{
		$_SESSION['message'] = 'Cannot export. Data empty';
		header('location:index.php?user_id='.$user_id);
	}
?>