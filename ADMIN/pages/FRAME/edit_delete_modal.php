<!-- Edit -->
<div class="modal fade" id="edit_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">EDIT PRODUCT : <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="edit.php">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">PROD:</label>
					</div>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" name="old_name" value="<?php echo $row['name']; ?>" readonly>
						<input type="text" class="form-control" name="new_name" value="<?php echo $row['name']; ?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">PRICE:</label>
					</div>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" name="old_price" value="<?php echo $row['price']; ?>">
						<input type="number" class="form-control" name="new_price" step=".01" value="<?php echo $row['price']; ?>">
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">TYPE:</label>
					</div>
					<div class="col-sm-10">
						<select name="type" class="form-control">
						<option value="PRICE INCREASE">PRICE INCREASE</option>
						<option value="PRICE DECREASE">PRICE DECREASE</option>
						<option value="RESTOCK">RESTOCK</option>
						<option value="SOLD">SOLD</option>
						</select>
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">QTY:</label>
					</div>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" name="old_qty" value="<?php echo $row['qty']; ?>">
						<input type="number" class="form-control" name="new_qty" value="<?php echo $row['qty']; ?>">
						<?php date_default_timezone_set('Asia/Manila'); ?>
						<input type="hidden" class="form-control" name="date_updated" value="<?php echo date('Y-m-d'); ?>">
						<input type="hidden" class="form-control" name="updated_by" value="<?php echo $user_id; ?>">
						
					</div>
				</div>

					<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">EXPIRATION:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="expiration_date" value="<?php echo $row['expiration_date']; ?>">
					</div>
				</div>


				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">DESCRIPTION:</label>
					</div>
					<div class="col-sm-10">
						<textarea class="form-control" name="description"><?php echo $row['description']; ?></textarea>
					</div>
				</div>
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>


<!-- SHOPEE -->
<div class="modal fade" id="shopee_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">EDIT PRODUCT : <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="edit_shopee_product.php">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">PROD:</label>
					</div>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" name="old_name" value="<?php echo $row['name']; ?>" readonly>
						<input type="text" class="form-control" name="new_name" value="<?php echo $row['name']; ?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">PRICE:</label>
					</div>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" name="old_price" value="<?php echo $row['price']; ?>">
						<input type="number" class="form-control" name="new_price" step=".01" value="<?php echo $row['price']; ?>">
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">TYPE:</label>
					</div>
					<div class="col-sm-10">
						<select name="type" class="form-control">
						<option value="PRICE INCREASE">PRICE INCREASE</option>
						<option value="PRICE DECREASE">PRICE DECREASE</option>
						<option value="RESTOCK">RESTOCK</option>
						<option value="SOLD">SOLD</option>
						</select>
					</div>
				</div>

			


				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">QTY:</label>
					</div>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" name="old_qty" value="<?php echo $row['qty']; ?>">
						<input type="number" class="form-control" name="new_qty" value="<?php echo $row['qty']; ?>">
						<?php date_default_timezone_set('Asia/Manila'); ?>
						<input type="hidden" class="form-control" name="date_updated" value="<?php echo date('Y-m-d'); ?>">
						<input type="hidden" class="form-control" name="updated_by" value="<?php echo $user_id; ?>">
						
					</div>
				</div>
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>

<!-- LAZADA -->
<div class="modal fade" id="lazada_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">EDIT PRODUCT : <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="edit_lazada.php">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">PROD:</label>
					</div>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" name="old_name" value="<?php echo $row['name']; ?>" readonly>
						<input type="text" class="form-control" name="new_name" value="<?php echo $row['name']; ?>">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">PRICE:</label>
					</div>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" name="old_price" value="<?php echo $row['price']; ?>">
						<input type="number" class="form-control" name="new_price" step=".01" value="<?php echo $row['price']; ?>">
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">TYPE:</label>
					</div>
					<div class="col-sm-10">
						<select name="type" class="form-control">
						<option value="PRICE INCREASE">PRICE INCREASE</option>
						<option value="PRICE DECREASE">PRICE DECREASE</option>
						<option value="RESTOCK">RESTOCK</option>
						<option value="SOLD">SOLD</option>
						</select>
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">QTY:</label>
					</div>
					<div class="col-sm-10">
						<input type="hidden" class="form-control" name="old_qty" value="<?php echo $row['qty']; ?>">
						<input type="number" class="form-control" name="new_qty" value="<?php echo $row['qty']; ?>">
						<?php date_default_timezone_set('Asia/Manila'); ?>
						<input type="hidden" class="form-control" name="date_updated" value="<?php echo date('Y-m-d'); ?>">
						<input type="hidden" class="form-control" name="updated_by" value="<?php echo $user_id; ?>">
						
					</div>
				</div>
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>


<!-- shopee_approve_ -->

<div class="modal fade" id="shopee_approve_<?php echo $row['sh_id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">SHOPEE UPLOAD : <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="edit_shopee.php">
				<input type="hidden" class="form-control" name="sh_id" value="<?php echo $row['sh_id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">CATEGORY:</label>
					</div>
					<div class="col-sm-10">
						<select name="category" class="form-control" required>
							<?php
							$sqlcategor = "SELECT * FROM shopee_category";

							//use for MySQLi-OOP
							$query1 = $conn->query($sqlcategor);
							while($crow = $query1->fetch_assoc()){
							?>

							<option value="<?php echo $crow['category_id'] ?>"><?php echo $crow['category_name'] ?></option>

						<?php } ?>
						</select>
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">DIMENSION:</label>
					</div>
					<br>
					<br>
					<div class="col-sm-12">
						<label class="control-label modal-label">WEIGHT:</label>
						<input type="number" class="form-control" name="weight" placeholder="<?php echo $row['weight']; ?>" required>
					</div>
					<br>
					<br>
					<div class="col-sm-12">
						<label class="control-label modal-label">LENGTH:</label>
						<input type="number" class="form-control" name="length" placeholder="<?php echo $row['length']; ?>" required>
					</div>
					<br>
					<br>
					<div class="col-sm-12">
						<label class="control-label modal-label">WIDTH:</label>
						<input type="number" class="form-control" name="width" placeholder="<?php echo $row['width']; ?>" required>
					</div>
					<br>
					<br>
					<div class="col-sm-12">
						<label class="control-label modal-label">HEIGHT:</label>
						<input type="number" class="form-control" name="height" placeholder="<?php echo $row['height']; ?>" required>
					</div>
				</div>
				<input type="hidden" class="form-control" name="updated_by" value="<?php echo $user_id; ?>">
				
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>


<!-- shopee -->
<div class="modal fade" id="shopee_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">PRODUCT : <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="add_to_shopee.php">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">PROD:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="product_name" value="<?php echo $row['name']; ?>" readonly="">
					     <input type="hidden" class="form-control" name="user_id" value="<?php echo $user_id; ?>" readonly="">
					     <input type="hidden" class="form-control" name="prod_id" value="<?php echo $row['id']; ?>" readonly="">
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">SKU:</label>
					</div>
					<div class="col-sm-10">
						<input type="number" class="form-control" name="parent_sku" value="<?php echo $row['sku']; ?>" readonly>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">IMAGE:</label>
					</div>
					<div class="col-sm-10">
						<input type="text" class="form-control" name="image_per_variation" value="http://localhost/AQT/pages/FRAME/<?php echo $row['photo']; ?>" readonly>
					</div>
				</div>

				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">STOCK:</label>
					</div>
					<div class="col-sm-10">
						<input type="number" class="form-control" name="stock" value="<?php echo $row['qty']; ?>" readonly>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">PRICE:</label>
					</div>
					<div class="col-sm-10">
						<input type="number" class="form-control" name="price" value="<?php echo $row['price']; ?>" readonly>
					</div>
				</div>
				

				
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="submit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> PRE-UPLOAD TO SHOPEE</a>
			</form>
            </div>

        </div>
    </div>
</div>

<!-- show -->
<div class="modal fade" id="show_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">REMOVED PRODUCT : <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="remove_edit.php">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
					<input type="hidden" class="form-control" name="user_id" value="<?php echo $_GET['user_id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Re-live ? </label>
					</div>
					<div class="col-sm-10">
					    <select class="form-control" name="status">
					    	<option value="0">LIVE</option>
					    	<option value="1">DELIST</option>
					    </select>
					</div>
				</div>
				
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="edit" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>


<!-- IMAGE -->


<div class="modal fade" id="photo_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">EDIT PHOTO : <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="edit_photo.php" enctype="multipart/form-data">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">


					<div class="col-md-12">
						<div class="form-group">
							<h3 align="center">Current Photo</h3>
							<center><img src="<?php echo $row['photo']?>" height="120" width="150" /></center>
							<input type="hidden" name="previous" value="<?php echo $row['photo']; ?>"/>
							<h3 align="center">New Photo</h3>
							<center><input type="file" class="form-control" name="photo" required="required"/></center>
							<input type="hidden" value="<?php echo $row['id']?>" name="id"/>
							<input type="hidden" class="form-control" name="updated_by" value="<?php echo $user_id; ?>">
						</div>
						
					</div>
				
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="edit_photo" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Update</a>
			</form>
            </div>

        </div>
    </div>
</div>


<!-- add_warehouse -->
<div class="modal fade" id="add_warehouse_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">ADD WAREHOUSE FOR PRODUCT: <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="addwarehouse.php">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
					<input type="hidden" class="form-control" name="user_id" value="<?php echo $_GET['user_id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Company</label>
					</div>
					<div class="col-sm-10">
					   <select name="company" class="form-control" required>
							<?php
							$sqlwarehouse = "SELECT * FROM ware_house";

							//use for MySQLi-OOP
							$queries = $conn->query($sqlwarehouse);
							while($ware = $queries->fetch_assoc()){
							?>

							<option value="<?php echo $ware['wid'] ?>"><?php echo $ware['company_name'] ?></option>

						<?php } ?>
						</select>
					</div>
				</div>
				
				
				
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="Add" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Add</a>
			</form>
            </div>

        </div>
    </div>
</div>


<!-- restock -->
<div class="modal fade" id="add_stock_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">ADD WAREHOUSE STOCK FOR PRODUCT: <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="addwarehousestock.php">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
					<input type="hidden" class="form-control" name="user_id" value="<?php echo $_GET['user_id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Quantity:</label>
					</div>
					<div class="col-sm-10">
						<input type="number" class="form-control" name="quantity" required="">
					</div>
				</div>
				
				
				
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="Add" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Add</a>
			</form>
            </div>

        </div>
    </div>
</div>


<!-- delivery -->
<div class="modal fade" id="check_delivery_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">WAREHOUSE DELIVERY PROGRESS FOR PRODUCT: <?php echo strtoupper($row['name']); ?> </h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="addwarehousestock.php">
				<input type="hidden" class="form-control" name="id" value="<?php echo $row['id']; ?>">
					<input type="hidden" class="form-control" name="user_id" value="<?php echo $_GET['user_id']; ?>">
				<div class="row form-group">
					<?php $houseloc =  $wrow['street_address'].','.$wrow['city'].','.$wrow['province'];  ?>

				<iframe src="map/?houseloc=<?php echo $houseloc;  ?>" style="width:100%; height:500px;"></iframe>
				</div>	
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Status:</label>
					</div>
					<div class="col-sm-10">
						<select class="form-control" name="status">
					    	<option value="<?php echo $srow['status']; ?>"><?php echo $srow['status']; ?> (CURRENT)</option>
					    	<option value="INTRANSIT">INTRANSIT</option>
					    	<option value="DELIVERED">DELIVERED</option>
					    </select>
					</div>
				</div>
				
				
				
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="Add" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Add</a>
			</form>
            </div>

        </div>
    </div>
</div>




<!-- Delete -->
<div class="modal fade" id="delete_<?php echo $row['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
        	<form action="delete.php" method="POST">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Delete Product</h4></center>
            </div>
            <div class="modal-body">	
            	<p class="text-center">Are you sure you want to Delete</p>
				<h2 class="text-center"><?php echo $row['name']; ?></h2>
					<input type="hidden" name="id" value="<?php echo $row['id']; ?>" readonly="">
					<input type="hidden" name="sku" value="<?php echo $row['sku']; ?>" readonly="">
					<input type="hidden" name="name" value="<?php echo $row['name']; ?>" readonly=""> 
					<input type="hidden" name="price" value="<?php echo $row['price']; ?>" readonly=""> 
					<input type="hidden" name="qty" value="<?php echo $row['qty']; ?>" readonly="">
					<input type="hidden" name="date_created" value="<?php echo $row['date_created']; ?>" readonly="">
					<input type="hidden" name="removed_by" value="<?php echo $user_id; ?>" readonly="">
			
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="delete" class="btn btn-success"><span class="glyphicon glyphicon-check"></span> Delete</a>
            </div>
           	</form>
        </div>
    </div>
</div>