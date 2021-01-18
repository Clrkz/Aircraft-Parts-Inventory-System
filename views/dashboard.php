<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
<style>
#bg {
  position: fixed; 
  top: 0; 
  left: 0; 
	
  /* Preserve aspet ratio */
  min-width: 100%;
  min-height: 100%;
}
#img {

}
.headerimg {
	 top: 80px;
	 left: 80px;
  position: relative;
  text-align: center;
  color: white;
  font-size: 90px;
  font-style: normal;
  font-family: Cooper;
  text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
  
}

.container {
	 top: 50px;
	 left: 180px;
  position: relative;
  text-align: center;
  color: white;
  font-size: 90px;
  font-style: normal;
  font-family: Cooper;
  text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
  
}

.container1 {
	 top: 130px;
	 left: 80px;
  position: relative;
  text-align: center;
  color: white;
  font-size: 40px;
  font-style: normal;
  font-family: Cooper;
  text-shadow: 2px 2px 5px blue;
  
}

.bottom-left {
  position: absolute;
  bottom: 8px;
  left: 16px;
}

.top-left {
  position: absolute;
  top: 8px;
  left: 16px;
}

.top-right {
  position: absolute;
  top: 8px;
  right: 16px;
}

.bottom-right {
  position: absolute;
  bottom: 8px;
  right: 16px;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

</style>
	<title></title>

	<!-- bootstrap -->
	<link rel="stylesheet" type="text/css" href="assets/custom/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/custom/css/bootstrap-table.css">
	<link rel="stylesheet" type="text/css" href="assets/custom/css/datepicker.css">
	<link rel="stylesheet" type="text/css" href="assets/custom/css/datepicker3.css">
	<link rel="stylesheet" type="text/css" href="assets/custom/css/styles.css">

	<!-- toastr -->
	<link rel="stylesheet" type="text/css" href="assets/toastr/css/toastr.css">

	<!-- custom -->
	<link rel="stylesheet" type="text/css" href="assets/mycustom/css/styles.css">


</head>
<?php 
	include 'header.php';
?>
<body class="index-body">

<img src="login.jpg" id="bg" alt="">

<h2> </h2>
<p> </p>



<div class="container">
  <div class="centered">Welcome!</div>
</div>
<div class="headerimg">
<img id="img" src="bg.png"></img>
</div>
<!--
<div class="container1">
  <div class="centered" style="color:#ffffff">ROYAL STAR AVIATION MAINTENANCE AND SERVICES, INC.</div>
</div>
-->

	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 col-md-2 sidebar">
		<form role="search">
			<div class="form-group">
				<!-- <input type="text" class="form-control" placeholder="Search"> -->
			</div>
		</form>
		<ul class="nav menu">
			<li class="active">
				<a href="#">
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
			<li>
				<a href="items">
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
						<use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#stroked-line-graph"/>
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

</body>



<?php include 'footer.php'; ?>
</html>