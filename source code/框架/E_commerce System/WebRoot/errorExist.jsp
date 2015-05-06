<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>User Exists</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
  body{
				background: #000;
				color: #DDD;
				font-family: 'Helvetica', 'Lucida Grande', 'Arial', sans-serif;
			}
  .center
     {
        position:absolute;
        margin:7cm 7cm 7cm 15cm;
        width:70%;
        
     }
  </style>
  </head>
  
  <body>
    <div class="center">
		<p>ERROR,THE USER EXISTS !</p> 
		<a href="loginAndRegister.jsp">Back</a> 
	</div>
  </body>
