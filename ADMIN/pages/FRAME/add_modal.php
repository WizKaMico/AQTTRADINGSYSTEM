<!-- Add New -->
<div class="modal fade" id="addnew" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Add Warehouse</h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="add.php">
					<input type="hidden" class="form-control" name="user_id" value="<?php echo $_GET['user_id']; ?>">
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Company</label>
					</div>
					<div class="col-sm-10">
					    <input type="text" name="company_name" class="form-control" required=""/>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Street</label>
					</div>
					<div class="col-sm-10">
					    <input type="text" name="street_address" class="form-control" required=""/>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Province</label>
					</div>
					<div class="col-sm-10">
					    <select id="province" name="city" class="form-control" required=""></select>
				
					 
					</div>
				</div>
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">City</label>
					</div>
					<div class="col-sm-10">
					    <select id="city" name="province" class="form-control" required=""></select>	
					</div>
				</div>
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="add" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Save</a>
			</form>
            </div>
 
        </div>
    </div>
</div>




<!-- Add New -->
<div class="modal fade" id="addsize" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Add Size</h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="add_size.php">
				
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Size</label>
					</div>
					<div class="col-sm-10">
					    <input type="text" name="size" class="form-control" required=""/>
					</div>
				</div>
				
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="add" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Save</a>
			</form>
            </div>
 
        </div>
    </div>
</div>

<!-- Add New -->
<div class="modal fade" id="addcategory" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <center><h4 class="modal-title" id="myModalLabel">Add Category</h4></center>
            </div>
            <div class="modal-body">
			<div class="container-fluid">
			<form method="POST" action="add_category.php">
				
				<div class="row form-group">
					<div class="col-sm-2">
						<label class="control-label modal-label">Category</label>
					</div>
					<div class="col-sm-10">
					    <input type="text" name="category" class="form-control" required=""/>
					</div>
				</div>
				
				
            </div> 
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
                <button type="submit" name="add" class="btn btn-primary"><span class="glyphicon glyphicon-floppy-disk"></span> Save</a>
			</form>
            </div>
 
        </div>
    </div>
</div>




