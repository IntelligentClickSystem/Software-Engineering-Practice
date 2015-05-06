<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*"
         import="com.dao.*"
         import="com.entity.*"
         import="com.opensymphony.xwork2.ActionContext"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String username = (String) ActionContext.getContext().getSession().get("username");
String src = "img/"+username+".jpg";
 %>
<%@taglib prefix="s" uri="/struts-tags" %>
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
		 <script type="text/javascript"></script>
	</head>
	<body>
		
		
		<div id="header">
			<h1><a href="main.jsp">E-Shopping</a></h1>		
		</div>
		
		
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
               
                <li class="btn btn-inverse"><a href="loginAndRegister.jsp"title="" ><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
            </ul>
        </div>
            
		<div id="sidebar">
			<a href="main.jsp" class="visible-phone"><i class="icon icon-home"></i> Homepage</a>
			<ul>
				<li><a href="main.jsp"><i class="icon icon-home"></i> <span>Homepage</span></a></li>
				<li class="active submenu open">
					<a href="#"><i class="icon icon-th-list"></i> <span>User Management</span> <span class="label">1</span></a>
					<ul>
						<li><a href="information.jsp">My Information</a></li>
					</ul>
				</li>
				<li class="submenu">
					<a href="#"><i class="icon icon-signal"></i> <span>Order Management</span> <span class="label">1</span></a>
					<ul>
						<li><a href="vote.jsp">My Order</a></li>

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
				<h1>My Information</h1>
			</div>
			<div id="breadcrumb">
				<a href="#" title="Back to homepage" class="tip-bottom"><i class="icon-home"></i>Homepage</a>
				<a href="#" class="tip-bottom">User Management</a>
				<a href="#" class="current">Modify Information</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<h5>Personal Information</h5>
							</div>
							<div class="widget-content nopadding">
								<form  name="uploadImageForm" action="upload_images.action" method="post" enctype="multipart/form-data">  
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
              	<ul class="recent-comments">
					<li>
					<div class="user-thumb">
					<img width="50" height="50" src=<%=src%>>  
					
					</div>
					<div class="comments">
					<span class="user-info">personal information</span>
              	<table>
              	<tr>
              	
              	<td><input type="file" name="upload"></td>
              	<td> <button type="submit">upload</button></td></tr>
              		
            </table>
			 </div>
					</li>
				</ul>	
				</div>
		</div></div></form>
		
         <form action="saveInfo.action" method="post" >
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              </div>
              <div class="modal-body">
              	<ul class="recent-comments">
					<li>
					
					<div class="comments">
					<span class="user-info">personal information</span>
					
              	<table>
              	
              		<tr>
              	       <th><label>username</label></th>
              	       <th><label><%=username%></label></th>
              	   </tr>
              	   <tr>
              	   	<th><label>rank</label></th>
              	   	<th><input type="text" name="rank" id="rank" /></th>
              	   </tr>
				   <tr>
              	   	<th><label>phone</label></th>
              	   	<th><input type="text" name="phone" id="phone" /></th>
              	   </tr>
                   <tr>
              	   	<th><label>mail</label></th>
              	   	<th><input type="text" name="mail" id="mail" /></th>
              	   	</th>
              	   </tr>
              	   <tr>
              	   	<th><label>credit card number</label></th>
              	   	<th><input type="text" name="cardNo" id="cardNo" /></th>
              	   </tr>
            </table>
			 </div>
					</li>
				</ul>	
				</div>
		
          
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">close</button>
                <button type="submit" class="btn btn-primary">save</button>
              </div>
            </div><!-- /.modal-content -->
          </div><!-- /.modal-dialog -->
		</form> 			</div>
						</div>
					</div>
				</div>
				
				
				
			</div>
		</div>
		
		
         <script src="js/jquery.min.js"></script>
	<script src="js/jquery.ui.custom.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/bootstrap-colorpicker.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/jquery.uniform.js"></script>
	<script src="js/select2.min.js"></script>
	<script src="js/unicorn.js"></script>
	<script src="js/unicorn.form_common.js"></script>
	</body>
</html>
