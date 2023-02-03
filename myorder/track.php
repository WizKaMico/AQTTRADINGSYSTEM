<?php
	session_start();
	$email = $_GET['email'];
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="datatable/dataTable.bootstrap.min.css">
	<style>
		.height10{
			height:10px;
		}
		.mtop10{
			margin-top:10px;
		}
		.modal-label{
			position:relative;
			top:7px
		}
	</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="row">
			<?php
				if(isset($_SESSION['error'])){
					echo
					"
					<div class='alert alert-danger text-center'>
						<button class='close'>&times;</button>
						".$_SESSION['error']."
					</div>
					";
					unset($_SESSION['error']);
				}
				if(isset($_SESSION['success'])){
					echo
					"
					<div class='alert alert-success text-center'>
						<button class='close'>&times;</button>
						".$_SESSION['success']."
					</div>
					";
					unset($_SESSION['success']);
				}
			?>
			</div>
			<div class="row" style="margin-top:50px;">
              <form action="#" method="POST">
				<div class="row form-group">
					<div class="col-sm-12">
						<input type="text" class="form-control" name="code" placeholder="Enter Tracking Code" required>
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-12">
						<input type="email" class="form-control" name="email" value="<?php echo $email; ?>" required="" readonly="">
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-12">
						<input type="submit" name="submit" class="form-control" value="SEARCH" style="background-color:#fdb813; color: white;">
					</div>
				</div>
			</form>	
			
			</div>
			<div class="height10">
			</div>
			<?php if(isset($_POST['submit'])){ ?>
			<?php 
			$email = $_POST['email']; 
			$code = $_POST['code'];
			?>	
			<div class="row">
				<table id="myTable" class="table table-bordered table-striped">
					<thead>
						<th>ID</th>
						<th>Fullname</th>
						<th>Code</th>
						<th>Email</th>
						<th>Amount</th>
						<th>Status</th>
						<th>Action</th>
					</thead>
					<tbody>
						<?php
							include_once('../ADMIN/connection/connection.php');
							$sql = "SELECT * FROM tbl_order WHERE code = '$code' AND email = '$email'";

							//use for MySQLi-OOP
							$query = $conn->query($sql);
							while($row = $query->fetch_assoc()){
								echo 
								"<tr>
									<td>".$row['id']."</td>
									<td>".$row['name']."</td>
									<td>".$row['code']."</td>
									<td>".$row['email']."</td>
									<td>₱ ".$row['amount']."</td>
									<td>".$row['order_status']."</td>
									<td>
										
										<a href='print_pdf.php?id=".$row['id']."' class='btn btn-success btn-sm'><span class='glyphicon glyphicon-print'></span></a>
									</td>
									
								</tr>";
								include('edit_delete_modal.php');
							}
							/////////////////

							//use for MySQLi Procedural
							// $query = mysqli_query($conn, $sql);
							// while($row = mysqli_fetch_assoc($query)){
							// 	echo
							// 	"<tr>
							// 		<td>".$row['id']."</td>
							// 		<td>".$row['firstname']."</td>
							// 		<td>".$row['lastname']."</td>
							// 		<td>".$row['address']."</td>
							// 		<td>
							// 			<a href='#edit_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal'><span class='glyphicon glyphicon-edit'></span> Edit</a>
							// 			<a href='#delete_".$row['id']."' class='btn btn-danger btn-sm' data-toggle='modal'><span class='glyphicon glyphicon-trash'></span> Delete</a>
							// 		</td>
							// 	</tr>";
							// 	include('edit_delete_modal.php');
							// }
							/////////////////

						?>
					</tbody>
				</table>
			</div>
		<?php } else { ?>

		<?php } ?>	
		</div>
	</div>
</div>

<script src="jquery/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="datatable/jquery.dataTables.min.js"></script>
<script src="datatable/dataTable.bootstrap.min.js"></script>
<!-- generate datatable on our table -->
<script>
$(document).ready(function(){
	//inialize datatable
    $('#myTable').DataTable();

    //hide alert
    $(document).on('click', '.close', function(){
    	$('.alert').hide();
    })
});
</script>
</body>
</html>