<?php
	include_once('../../connection/connection.php');
	if(ISSET($_POST['edit_photo'])){
		$id = $_POST['id'];
		$image_name = $_FILES['photo']['name'];
		$image_temp = $_FILES['photo']['tmp_name'];
		$updated_by = $_POST['updated_by'];
		date_default_timezone_set('Asia/Manila');
		$date_updated = date('Y-m-d');
		$activity = 'UPDATED PRODUCT PHOTO PROD.ID:'.$id.'';
		$previous = $_POST['previous'];
		$exp = explode(".", $image_name);
		$end = end($exp);
		$name = time().".".$end;
		if(!is_dir("./upload"))
			mkdir("upload");
		$path = "upload/".$name;
		$allowed_ext = array("gif", "jpg", "jpeg", "png");
		if(in_array($end, $allowed_ext)){
			if(unlink($previous)){
				if(move_uploaded_file($image_temp, $path)){

					 mysqli_query($conn,"INSERT INTO tbl_audit (user_id, activity, date_created) VALUES ('$updated_by','$activity','$date_updated')");  
					mysqli_query($conn, "UPDATE `tbl_product` set `photo` = '$path' WHERE `id` = '$id'") or die(mysqli_error());
					mysqli_query($conn, "INSERT INTO photo_history (prod_id, previous, replaced_by, updated_by, date_updated) VALUES ('$id', '$previous', '$path', '$updated_by', '$date_updated')") or die(mysqli_error());
					echo "<script>alert('User account updated!')</script>";
					header("location: index.php?user_id=".$updated_by);
				}
			}		
		}else{
			echo "<script>alert('Image only')</script>";
		}
	}
?>