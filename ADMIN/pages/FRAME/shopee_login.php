
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
		
			<div class="height10">
			</div>
			<div class="row">
				<table id="myTable" class="table table-bordered table-striped">
					<thead>
							<th>SKU</th>
						<th style="width:20%;">PHOTO</th>
						<th style="width:10%;">PRICE</th>
						<th style="width:10%;">QTY</th>
						<th style="width:20%;">PRODUCT</th>
						<th style="width:20%;">QR CODE</th>
						<th style="width:20%;">ACTION</th>
					</thead>
					<tbody>
						<?php
							include_once('../../connection/connection.php');
							$sql = "select * from shopee_product";

							//use for MySQLi-OOP
							$query = $conn->query($sql);
							while($row = $query->fetch_assoc()){

								

								echo 
								"<tr>
									<td>".$row['product_id']."</td>
									<td><img src='".$row['photo']."' style='width:20%;'></td>
									<td>".$row['price']."</td>
									<td>".$row['qty']."</td>
									<td>".$row['product_name']."</td>
									<td>
									<img src='https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=https%3A%2F%2Fshopee.ph/product/56820982/".$row['product_id']."%2F&choe=UTF-8' style='width:30%; height:50px;'/>
									
									</td>
									<td>
										
								<a href='https://shopee.ph/product/56820982/".$row['product_id']."/' class='btn btn-success btn-sm'  target='_blank' style='background-color:#fd5f32; border-color:#fd5f32;'><span class='glyphicon glyphicon-globe'></span></a>

								<a href='shopee_history.php?id=".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal' style='background-color:#fd5f32; border-color:#fd5f32;'><span class='info'><span class='glyphicon glyphicon-list'></span><span class='tooltip'>PRODUCT HISTORY</span></span></a>

								<a href='#shopee_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal' style='background-color:#fd5f32; border-color:#fd5f32;'><span class='info'><span class='glyphicon glyphicon-copy'></span><span class='tooltip'>HIGH STOCK</span></span></a>";


								

                                 
									echo "  
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