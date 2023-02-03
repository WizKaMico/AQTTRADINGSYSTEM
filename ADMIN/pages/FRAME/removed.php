<?php
	session_start();
	$user_id = $_GET['user_id'];
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>MY PRODUCTS</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="datatable/dataTable.bootstrap.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
				<a href="index.php?user_id=<?php echo $user_id; ?>" data-toggle="modal" class="btn btn-primary"><span class="glyphicon glyphicon-arrow-left"></span> Back</a>
				
			</div>
			<div class="height10">
			</div>
			<div class="row">
				<table id="myTable" class="table table-bordered table-striped">
					<thead>
						<th>SKU</th>
						<th>PROD</th>
						<th>PRICE</th>
						<th>QTY</th>
						<th>IMAGE</th>
						<th style="width:30%;">ACTION</th>
					</thead>
					<tbody>
						<?php
							include_once('../../connection/connection.php');
							$sql = "SELECT * FROM tbl_product WHERE status != '0'";

							//use for MySQLi-OOP
							$query = $conn->query($sql);
							while($row = $query->fetch_assoc()){
								echo 
								"<tr>
									<td>".$row['sku']."</td>
									<td>".$row['product_name']."</td>
									<td>".$row['price']."</td>
									<td>".$row['qty']."</td>
									<td>".$row['photo']."</td>
									<td>
										<a href='#show_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal'><span class='	glyphicon glyphicon-floppy-saved'></span></a>
										
									</td>
								</tr>";
								include('edit_delete_modal.php');
							}
							
						?>
					</tbody>
				</table>
			</div>
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