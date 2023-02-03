<?php
  session_start();
  include('../ADMIN/connection/connection.php');
	if (isset($_POST['login']))
		{
			$email = mysqli_real_escape_string($conn, $_POST['email']);
			$password = mysqli_real_escape_string($conn, md5($_POST['password']));
 
			$query 		= mysqli_query($conn, "SELECT * FROM client WHERE  password='$password' and email='$email'");
			$row		= mysqli_fetch_array($query);
			$num_row 	= mysqli_num_rows($query);
 
			if ($num_row > 0) 
				{		

				   if($row['status'] == 'VALID'){	
					$_SESSION['user_id']=$row['user_id'];
					header('location: ../index.php?view=HOME');
				   }else{
				   header('location: ../login.php?view=LOGIN&message=ERROR');		
				   }
 
				}
			else
				{
					header('location: ../login.php?view=LOGIN');
				}
		}
  ?>