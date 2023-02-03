<?php
	session_start();
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

			<div class="row">
			
				<a href="#addprod" data-toggle="modal" class="btn btn-success pull-left" style="background-color:#747474; border-color:#747474; margin-left:10px;"><span class="glyphicon glyphicon-plus"></span> ADD PRODUCT</a>
			</div>
			
			<div class="height10">

			</div>
			<div class="row">
				<table id="myTable" class="table table-bordered table-striped">
					<thead>
						<th>IMAGE</th>
						<th>PRODUCTS</th>
						<th>PRICE</th>
						<th>CATEGORY</th>
						<th>CODE</th>
						<th>SIZE</th>
						<th>ACTION</th>
					</thead>
					<tbody>
						<?php
							include_once('../../connection/connection.php');
							$sql = "SELECT * FROM  tbl_product";

							//use for MySQLi-OOP
							$query = $conn->query($sql);
							while($row = $query->fetch_assoc()){
								echo 
								"<tr>
									<td><img src='".$row['image']."' style='width:50%; height:100px;'></td>
									<td>".$row['name']."</td>
									<td>".$row['price']."</td>
									<td>".$row['category']."</td>
									<td>".$row['code']."</td>
									<td>".$row['size']."</td>
									<td>
						 			<a href='#edit_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal' style='background-color:#747474; border-color:#747474;'><span class='glyphicon glyphicon-edit'></span></a>
						 			<a href='#photo_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal' style='background-color:#747474; border-color:#747474;'><span class='glyphicon glyphicon-picture'></span></a>
								    <a href='#delete_".$row['id']."' class='btn btn-danger btn-sm' data-toggle='modal' style='background-color:#747474; border-color:#747474;'><span class='glyphicon glyphicon-trash'></span></a>
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
		</div>
	</div>
</div>
<?php include('add_modal.php') ?>

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