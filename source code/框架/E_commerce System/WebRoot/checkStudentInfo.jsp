<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.entity.*" %>
<%@ page import="com.entity.*" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Vote Management System</title>
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
	
<script> 	
function doSubmit(id){
  document.getElementsByName("id").value=5;
                   }
</script>	
		
		<div id="header">
			<h1><a href="teacherMain.jsp">Vote Management System</a></h1>		
		</div>
		
		
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
               
                <li class="btn btn-inverse"><a href="loginAndRegister.jsp"title="" ><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
            </ul>
        </div>
            
		<div id="sidebar">
			<a href="teacherMain.jsp" class="visible-phone"><i class="icon icon-home"></i> Homepage</a>
			<ul>
				<li><a href="teacherMain.jsp"><i class="icon icon-home"></i> <span>Homepage</span></a></li>
				<li class="active submenu open">
					<a href="#"><i class="icon icon-th-list"></i> <span>User Management</span> <span class="label">2</span></a>
					<ul>
						<li><a href="modifyPersonalInfo_teacher.jsp">Modify Information</a></li>
						<li><a href="checkStudentInfo.jsp">Check Student Information</a></li>
					</ul>
				</li>
				<li class="submenu">
					<a href="#"><i class="icon icon-signal"></i> <span>Vote Management</span> <span class="label">2</span></a>
					<ul>
						<li><a href="createVote.jsp">Create Vote</a></li>
						<li><a href="Showvote.action">Show Vote</a></li>

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
				<h1>Check Student Information</h1>
			</div>
			<div id="breadcrumb">
				<a href="teacherMain.jsp" title="Back to homepage" class="tip-bottom"><i class="icon-home"></i>Homepage</a>
				<a href="#" class="tip-bottom">User Management</a>
				<a href="#" class="current">Check Student Information</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
							
								<h5>Student Information</h5>
								<%
         CourseDao c=new CourseDao();
         List list=c.getCourseInfo();
         for(int i=0;i<list.size();i++){
             Course cInfo=(Course)list.get(i);
     %>	
								<h5><a herf=""><%=cInfo.getName() %></a></h5>
								<%
          }
       %>	
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped table-hover data-table">
									<thead>
									<tr>
									<th>course</th>
									<th>username</th>
									<th>studentNo</th>
									<th>sex</th>
									<th>school</th>
									<th>telephone</th>
									</tr>
									</thead>
								
									
<%
         StudentDao sd=new StudentDao();
         List list1=sd.getStudentInfo();
         for(int i=0;i<list1.size();i++){
             Student stuInfo=(Student)list1.get(i);
     %>							
									<tr>
									
									    
									    <th><%=stuInfo.getCname() %></th>
										<th><%=stuInfo.getName() %></th>
										<th><%=stuInfo.getSno() %></th>
										<th><%=stuInfo.getSex1() %></th>
										<th><%=stuInfo.getSchool1() %></th>
										<th><%=stuInfo.getTel() %></th>
									</tr>	
		<%
          }
       %>																		
										
									</table>  
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

