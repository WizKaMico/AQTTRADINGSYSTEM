<?php
	session_start();
	$user_id = $_GET['user_id'];

		include_once('../../connection/connection.php');

	$schop=mysqli_query($conn, "select * from shopee_convert")or die('Error In Session');
    $scrow=mysqli_fetch_array($schop);

    $trial = mysqli_query($conn,"SELECT * FROM tbl_product WHERE status != 1");

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>MY PRODUCTS</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="datatable/dataTable.bootstrap.min.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="js/city.js"></script>	
	<script type="text/javascript" src="jquery.min.js"></script>
			<script>	
		window.onload = function() {	

			// ---------------
			// basic usage
			// ---------------
			var $ = new City();
			$.showProvinces("#province");
			$.showCities("#city");

			// ------------------
			// additional methods 
			// -------------------

			// will return all provinces 
			console.log($.getProvinces());
			
			// will return all cities 
			console.log($.getAllCities());
			
			// will return all cities under specific province (e.g Batangas)
			console.log($.getCities("Batangas"));	
			
		}
		</script>

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


	<style>
.info:hover .tooltip {
  color: white;
  visibility: visible;
  opacity: 1;
  transition: opacity 1s
}
.tooltip {
  visibility: hidden;
  opacity: 0;
  transition: opacity 1s;
  text-align: center;
  border-radius: 6px;
  padding: 10px 0;
  background-color: black;
  font-size:10px;
}
}
.tooltip:hover {
  visibility: visible
}

.info {
cursor: help
}
</style>

<script type="text/javascript">
function delete_confirm(){
	var result = confirm("Are you sure to update data from the selected products ?");
	if(result){
		return true;
	}else{
		return false;
	}
}

$(document).ready(function(){
    $('#select_all').on('click',function(){
        if(this.checked){
            $('.checkbox').each(function(){
                this.checked = true;
            });
        }else{
             $('.checkbox').each(function(){
                this.checked = false;
            });
        }
    });
	
	$('.checkbox').on('click',function(){
		if($('.checkbox:checked').length == $('.checkbox').length){
			$('#select_all').prop('checked',true);
		}else{
			$('#select_all').prop('checked',false);
		}
	});
});
</script>


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
				<a href="removed.php?user_id=<?php echo $user_id; ?>" data-toggle="modal" class="btn btn-primary"><span class="glyphicon glyphicon-off"></span> REMOVED PRODUCTS</a>
				<a href="export.php?user_id=<?php echo $user_id; ?>" data-toggle="modal" class="btn btn-primary"><span class="	glyphicon glyphicon-floppy-save"></span> EXPORT PRODUCTS</a>
				<a href="#addnew" data-toggle="modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> ADD WAREHOUSE</a>
				<a href="#addsize" data-toggle="modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> ADD SIZE</a>
				<a href="#addcategory" data-toggle="modal" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> ADD CATEGORY</a>

				<?php if(!empty($scrow['prod_id'])){ ?>
				<a href="shopee.php?user_id=<?php echo $user_id; ?>" data-toggle="modal" class="btn btn-primary"><span class="	glyphicon glyphicon-floppy-save"></span> SHOPEE</a>	

				<?php } else { ?>
				

				<?php } ?>	

				

				

			</div>
			<div class="height10">
			</div>
			<div class="row">

				<form name="bulk_action_form" action="action.php" method="post" onSubmit="return delete_confirm();"/>



				<br>
				<label>SIZE</label>
				<select class="form-control" name="size" required="">
                          <?php
            
                          $sql = "SELECT * FROM tbl_size";

                          //use for MySQLi-OOP
                          $query = $conn->query($sql);
                          while($row = $query->fetch_assoc()){
                            ?>
                       <option value="<?php echo $row['size']; ?>"><?php echo $row['size']; ?></option>
                          <?php } ?>
         </select>
         <br>
         <label>CATEGORY</label>
				<select class="form-control" name="category" required="">
                          <?php
            
                          $sql1 = "SELECT * FROM tbl_category";

                          //use for MySQLi-OOP
                          $query1 = $conn->query($sql1);
                          while($xrow = $query1->fetch_assoc()){
                            ?>
                       <option value="<?php echo $xrow['category']; ?>"><?php echo $xrow['category']; ?></option>
                          <?php } ?>
         </select>
         <br>
         <label>PRODUCT DESCRIPTION</label>
         <textarea class="form-control" name="description" required="" rows="10" cols="5"></textarea>
         <input type="hidden" name="user_id" value="<?php echo $user_id; ?>">
                <br> 


				<input type="submit" class="btn btn-primary" name="bulk_update_submit" value="UPDATE" style="width:100%;" />
				<br>
				<br>

				<table id="myTable" class="table table-bordered table-striped">
					<thead>
						<th><input type="checkbox" name="select_all" id="select_all" value=""/></th>
						<th>SKU</th>
						<th>PROD</th>
						<th>PRICE</th>
						<th>QTY</th>
						<th>SIZE</th>
						<th>CATEGORY</th>
						<th>DESCRIPTION</th>
						<th>EXPIRATION</th>
						<th style="width:45%;">ACTION</th>
					</thead>
					<tbody>

						<?php
							 if(mysqli_num_rows($trial) > 0){
			         while($row = mysqli_fetch_assoc($trial)){

              
              date_default_timezone_set('Asia/Manila');
							$date1 = date('Y-m-d');
							$date2 = $row['expiration_date'];

							$diff = abs(strtotime($date2) - strtotime($date1));

							$years = floor($diff / (365*60*60*24));
							$months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
							$days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));	
								// setlocale(LC_MONETARY,"en_US");
								$lchop=mysqli_query($conn, "select * from shopee_convert WHERE prod_id = '".$row['id']."'")or die('Error In Session');
                                $lcrow=mysqli_fetch_array($lchop);

                                $wchop=mysqli_query($conn, "SELECT * FROM `product_store` LEFT JOIN ware_house ON product_store.wid = ware_house.wid WHERE product_store.pid = '".$row['id']."'")or die('Error In Session');
                                $wrow=mysqli_fetch_array($wchop);


                                $schop=mysqli_query($conn, "select * from warehouse_stocking WHERE pid = '".$row['id']."'")or die('Error In Session');
                                $srow=mysqli_fetch_array($schop);

								echo 
								"<tr>";

								?>

									 <td align="center"><input type="checkbox" name="checked_id[]" class="checkbox" value="<?php echo $row['id']; ?>"/></td> 

							<?php 
									echo "<td>";

									if($row['qty'] >= 1 and $row['qty']  <= 5){
									echo "<a href='#edit_".$row['id']."' class='btn btn-success btn-sm' style='background-color:yellow; color:black; border-color:yellow;' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-copy'></span><span class='tooltip'>LOW  STOCK</span></span> LOW STOCK-".$row['code']."</a>";
									 }else if($row['qty'] >= 6) {
									 
									 	 echo "<a href='#edit_".$row['id']."' class='btn btn-danger btn-sm' style='background-color:green; color:white; border-color:green;' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-copy'></span><span class='tooltip'>HIGH STOCK</span></span> HIGH STOCK-".$row['code']."</a>";  
									 }else if($row['qty'] <= 0) {	

									 		echo "<a href='#edit_".$row['id']."' class='btn btn-success btn-sm' style='background-color:red; color:white; border-color:red;' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-copy'></span><span class='tooltip'>OUT OF STOCK</span></span> OUT OF STOCK-".$row['code']."</a>";

								   }else{
								
								   }


								   if(!empty($row['rstat'])){	
								   echo "<br><a href='#edit_".$row['id']."' class='btn btn-success btn-sm' style='background-color:red; color:white; border-color:red;' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-copy'></span><span class='tooltip'>EXPIRED</span></span>".$row['rstat']."</a>";
								   	}else{ 

								   	}
							echo"</td>
									<td>".$row['name']."</td>
									<td>".number_format($row['price'])."</td>
									<td>".$row['qty']."</td>
									<td>".$row['size']."</td>
									<td>".$row['category']."</td>
									<td>".$row['description']."</td>
									<td>".$row['expiration_date']." "."<br>(".$years." year, ".$months." months, ".$days." days".")</td>
									<td>
										<a href='#edit_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-edit'></span><span class='tooltip'>EDIT PRODUCT</span></span></a>";
									
									if(empty($wrow['pid'])){	
									echo " <a href='#add_warehouse_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-copy'></span><span class='tooltip'>ADD WAREHOUSE TO GET THE PRODUCT</span></span></a> ";
								    }else{
								    	if(empty($srow['id'])){
								   echo " <a href='#add_stock_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-shopping-cart'></span><span class='tooltip'>RESTOCK PRODUCT</span></span></a> "; 	
								        }else{
								    echo " <a href='#check_delivery_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-time'></span><span class='tooltip'>DELIVERY IN PROGRESS</span></span></a> ";    	
								        }
								    }
								  echo "<a href='#photo_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-picture'></span><span class='tooltip'>ADD IMAGE</span></span></a>
										<a href='history.php?id=".$row['id']."&user_id=".$user_id."' class='btn btn-success btn-sm' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-list'></span><span class='tooltip'>PRODUCT HISTORY</span></span></a>
										<a href='#' class='btn btn-success btn-sm' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-globe'></span><span class='tooltip'>LAZADA API</span></span><b> L</b></a>";

                                    if(empty($lcrow['prod_id'])){
								    echo " <a href='#shopee_".$row['id']."' class='btn btn-success btn-sm' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-globe'></span><span class='tooltip'>SHOPEE API</span></span><b> S</b></a>";
                                     }else{

                                     }
									echo "  <a href='#delete_".$row['id']."' class='btn btn-danger btn-sm' data-toggle='modal'><span class='info'><span class='glyphicon glyphicon-trash'></span><span class='tooltip'>PRODUCT DELETE</span></span></a>
									</td>
								</tr>";
								include('edit_delete_modal.php');
							} 
							
						?>

						<?php }else{ ?>

						  <tr><td colspan="6">No records found.</td></tr> 
			        <?php } ?>
					</tbody>
				</table>
			</form>
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