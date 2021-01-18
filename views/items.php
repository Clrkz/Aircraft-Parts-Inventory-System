<?php 
	include 'header.php';
?>
<style>
#upper {
  text-transform: uppercase;
  }
</style>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 col-md-2 sidebar">
		<form role="search">
			<div class="form-group">
				<!-- <input type="text" class="form-control" placeholder="Search"> -->
			</div>
		</form>
		<ul class="nav menu">
			<li class="">
				<a href="dashboard">
					<svg class="glyph stroked dashboard-dial">
						<use xlink:href="#stroked-dashboard-dial"></use>
					</svg>
					Dashboard
				</a>
			</li>
			
			<li class="parent ">
				<a href="#">
					<span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span> Transaction 
				</a>
				<ul class="children collapse" id="sub-item-1">
				<!--
					<li>
						<a class="" href="reservation">
							<svg class="glyph stroked eye">
								<use xlink:href="#stroked-eye"/>
							</svg>
							Reservations
						</a>
					</li>
					-->
					<li>
						<a class="" href="new">
							<svg class="glyph stroked plus sign">
								<use xlink:href="#stroked-plus-sign"/>
							</svg>
							New
						</a>
					</li>
					<li>
						<a class="" href="borrow">
							<svg class="glyph stroked download">
								<use xlink:href="#stroked-download"/>
							</svg>
							Borrowed Items
						</a>
					</li>
					
				</ul>
			</li>
			<li>
				<a href="members">
					<svg class="glyph stroked male user ">
						<use xlink:href="#stroked-male-user"/>
					</svg>
					Borrower
				</a>
			</li>
			<?php if($_SESSION['admin_type'] == 1){ ?>
			<li class="active">
				<a href="#">
					<svg class="glyph stroked desktop">
						<use xlink:href="#stroked-desktop"/>
					</svg>
					Parts
				</a>
			</li>
			
			
			<li>
				<a href="inventory">
					<svg class="glyph stroked clipboard with paper">
						<use xlink:href="#stroked-clipboard-with-paper"/>
					</svg>
					Inventory
				</a>
			</li>
			<!--
			<li>
				<a href="report">
					<svg class="glyph stroked line-graph">
						<use xlink:href="#stroked-line-graph"/>
					</svg>
					Graph
				</a>
			</li>
			-->
			<li>
				<a href="user">
					<svg class="glyph stroked female user">
						<use xlink:href="#stroked-female-user"/>
					</svg>
					User
				</a>
			</li>
			<?php 
				}
				($_SESSION['admin_type'] == 1) ? include('include_history.php') : false;
			 ?>
		</ul>
	</div><!--/.sidebar-->


	<div class="col-sm-9 col-lg-10 col-md-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-3 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="dashboard"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Item</li>
			</ol>
			<div class="breadcrumb">
				<button class="btn btn-primary col-sm-offset-10 add_equipment">
					<svg class="glyph stroked plus sign">
						<use xlink:href="#stroked-plus-sign"/>
					</svg> &nbsp;
					Add Item
				</button>
			</div>
		</div><!--/.row-->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<table class="table table_equipment">
							<thead>
								<tr>
								    <th>Item No.</th>
									<th>Description</th>
									<th>Part No.</th>
									<th>Category</th>
									<th>Qty.</th>
									<th>Qty. Left</th>
									<th>Shelf No.</th>
									<th>Type</th>
									<th>Action</th>
									<th>Image</th>
									<th>Status</th>
									
									
								</tr>
							</thead>
						</table>
					</div>
				</div><!-- panel -->
			</div><!-- panel -->
		</div>
	</div>


<div class="right-sidebar equipment-side">
	<div class="sidebar-form">
		<div class="container-fluid">
			<h4 class="alert bg-success">
				<svg class="glyph stroked plus sign">
					<use xlink:href="#stroked-plus-sign"/>
				</svg>
				Add Item
			</h4>
			<form class="frm_addequipment" enctype="multipart/form-data">
				<input type="hidden" name="key" value="add_equipment" />
				<div class="form-group">
					<label>Part No.</label>
					<input id="id1" type="text" name="e_number" class="form-control" required>
				</div>
				<div class="form-group">
					<label>Shelf No.</label>
					
					<input id="id2" type="text" onkeyup="this.value = this.value.toUpperCase();" name="e_model" class="form-control" required>
				</div>
				<div class="form-group">
					<label>Category</label>
					<select name="e_category" class="form-control" required>
						<option selected disabled>Please select category</option>
						<option>AGUSTA PARTS</option>
						<option>DORNIER PARTS</option>
						<option>JETSTREAM PARTS</option>
						<option>SHERPA PARTS</option>
					</select> 
				</div>
				<div class="form-group">
					<label>Remarks</label>
					<input  id="id3"  type="text" name="e_brand" class="form-control" required>
				</div>
				<div class="form-group">
					<label>Description</label>
					<textarea  id="id4" name="e_description" class="form-control" required></textarea>
				</div>
				<div class="form-group">
					<label>Quantity</label>
					<input  id="id5" type="number" name="e_stock" class="form-control" min="1" required>
				</div>
				<div class="form-group hide">
					<label>Assign Location</label>
					<select name="e_assigned" class="form-control" required>
					</select>
				</div>
				<div class="form-group">
					<label>Type</label>
					<select type="text" name="e_type" class="form-control" required>
						<option disabled >Please select type</option>
						<option>Consumable</option>
						<option selected>Non-consumable</option>
					</select>
				</div>
				<div class="form-group" hidden>
					<label>Status</label>
					<select name="e_status" class="form-control" required>
						<option disabled >Please select status</option>
						<option value="1" selected>New</option>
						<option value="2">Old</option>
					</select>
				</div>
				
				<div class="form-group" hidden>
					<label>MR</label>
					<input type="text" name="e_mr" class="form-control"  value="<?php echo date('Y-m-d'); ?>" >
				</div>
				
				<div class="form-group" hidden>
					<label>Price</label>
					<input type="text" name="e_price" class="form-control"  value="0" >
				</div>
				
				 <div class="form-group" hidden> 
						<label >Photo</label>
						
						  <input type="file" name="e_photo" for="inputPassword3" class="form-control" />
						
					  </div>
				
				
				<div class="form-group">
					<div class="row">
						<div class="col-md-6 col-sm-12 col-xs-12">
							<button class="btn btn-danger btn-block cancel-equipment" type="button">
								<i class="fa fa-remove"></i>
								CANCEL
							</button>
						</div>
						<div class="col-md-6 col-sm-12 col-xs-12">
							<button class="btn btn-primary btn-block" type="submit">
								ADD
								<i class="fa fa-check"></i>
							</button>
						</div>
					</div>
				</div>
				<br>
				<br>
				<br>
			</form>
		</div>
	</div>
</div>


<div class="right-sidebar equipment-view">
	<div class="sidebar-form equipment-form">
		
	</div>
</div>



<?php include 'footer.php'; ?>