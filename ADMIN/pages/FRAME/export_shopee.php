<?php
	session_start();
	//connection
	include_once('../../connection/connection.php');
	$user_id = $_GET['user_id'];
 
	$sql = "SELECT * FROM shopee_convert";
	$query = $conn->query($sql);
 
	if($query->num_rows > 0){
		$delimiter = ',';
		//create a download filename
		date_default_timezone_set('Asia/Manila');
		$date = date('Y-m-d');
		$filename = 'aqtmanagement-shopee-upload-"'.$date.'".csv';
 
		$f = fopen('php://memory', 'w');
 
		$headers = array('sh_id', 'prod_id', 'category', 'product_name', 'product_description', 'parent_sku', 'variation_integration_no', 'variation_name1', 'option_variation_1', 'image_per_variation', 'variation_name2', 'option_variation_2', 'price', 'stock', 'sku', ' cover_image', 'item_image_1', 'item_image_2', 'item_image_3', 'item_image_4', 'item_image_5', 'item_image_6', 'item_image_7', 'item_image_8', 'weight', 'length', 'width', 'height', 'sample_channel_1', 'sample_channel_2', 'sample_channel_3');
    	fputcsv($f, $headers, $delimiter);
 
    	while($row = $query->fetch_array()){
	        $lines = array($row['sh_id'], $row['prod_id'], $row['category'], $row['product_name'], $row['product_description'], $row['parent_sku'], $row['variation_integration_no'], $row['variation_name1'], $row['option_variation_1'], $row['image_per_variation'], $row['variation_name2'], $row['option_variation_2'], $row['price'], $row['stock'], $row['sku'], $row['cover_image'], $row['item_image_1'], $row['item_image_2'], $row['item_image_3'], $row['item_image_4'], $row['item_image_5'], $row['item_image_6'], $row['item_image_7'], $row['item_image_8'], $row['weight'], $row['length'], $row['width'], $row['height'], $row['sample_channel_1'], $row['sample_channel_2'], $row['sample_channel_3']);
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
		header('location:shopee.php?user_id='.$user_id);
	}
?>