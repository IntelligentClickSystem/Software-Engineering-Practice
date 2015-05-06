<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>E-Shopping</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/colorpicker.css" />
		<link rel="stylesheet" href="css/datepicker.css" />
		<link rel="stylesheet" href="css/uniform.css" />
		<link rel="stylesheet" href="css/select2.css" />
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
		<script type="text/javascript">
		</script>
	</head>
	<body>
		
		
		<div id="header">
			<h1><a href="main.jsp">E-Shopping</a></h1>
		</div>
		
		
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
                  <li class="btn btn-inverse"><a title="" href="loginAndRegister.jsp"><i class="icon icon-share-alt"></i> <span class="text">login</span></a></li>
            </ul>
        </div>
            
		<div id="sidebar">
			<a href="#" class="visible-phone"><i class="icon icon-home"></i> Homepage</a>
			<ul>
				<li class="active"><a href="main.jsp"><i class="icon icon-home"></i> <span>Homepage</span></a></li>
				<li class="submenu">
					<a href="#"><i class="icon icon-th-list"></i> <span>User Management</span> <span class="label">1</span></a>
					<ul>
						<li><a href="information.jsp">My Information</a></li>
					</ul>
				</li>
				<li class="submenu">
					<a href="#"><i class="icon icon-signal"></i> <span>Order Management</span> <span class="label">1</span></a>
					<ul>
						<li><a href="order.jsp">My Order</a></li>
					</ul>
				</li>
			
			</ul>
		</div>
		
		<div id="style-switcher">
			<i class="icon-arrow-left icon-white"></i>
			<span>Theme</span>
			<a href="#grey" style="background-color: #555555;border-color: #aaaaaa;"></a>
            <a href="#light-blue" style="background-color: #8399b0;"></a>
			<a href="#blue" style="background-color: #2D2F57;"></a>
			<a href="#red" style="background-color: #673232;"></a>
            <a href="#red-green" style="background-image: url('img/demo/red-green.png');background-repeat: no-repeat;"></a>
		</div>
		
		<div id="content">
			<div id="content-header">
				<h1>Homepage</h1>
				
			</div>
			<div id="breadcrumb">
				<a href="#" title="Back to Homepage" class="tip-bottom"><i class="icon-home"></i>E-Shopping</a>
				<a href="#" class="current">Homepage</a>
			</div>
			
		

            <script src="js/excanvas.min.js"></script>
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.flot.min.js"></script>
            <script src="js/jquery.flot.resize.min.js"></script>
            <script src="js/jquery.peity.min.js"></script>
            <script src="js/fullcalendar.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.dashboard.js"></script>
	</body>
</html>
