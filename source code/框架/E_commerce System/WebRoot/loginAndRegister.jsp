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
        <link rel="stylesheet" href="css/unicorn.login.css" />
        <script type="text/javascript">
        function checkPassword()
	  {
	    var a=document.getElementById("userName").value;
	    var b=document.getElementById("password").value;
	    var c=document.getElementById("rePassword").value;
		
	    
	    if(a!=""&&b!=""&&c!=""){
			if(b !=c){
	           alert("Password not same");
	           document.getElementById("rePassword").value="";
	           return false;
			}
	    }
	  }
	  function checkNull(){
		var a=document.getElementById("userName").value;
	    var b=document.getElementById("password").value;
	    var c=document.getElementById("rePassword").value;
		var d=document.getElementById("phone").value;
		var e=document.getElementById("mail").value;
		var f=document.getElementById("address").value;
		var g=document.getElementById("cardNo").value;
		
		if(a==""||b==""||c==""||d==""||e==""||f==""||g==""){
		  alert("Information Not Complete");
	      return false;
		}
	  }


 </script>
 </head>
    <body>
        <div id="logo">
          <img src="img/logo.png" alt="" />
        </div>
        <div id="loginbox" style="height:250px;width:400px">            
            <form id="loginform" class="form-vertical"action="<%=request.getContextPath()%>/login"  method="get" name="form1">
				<p>Please enter your username and password</p>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-user"></i></span><input name="username" type="text" placeholder="username" id="loginUser"  />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span><input name="userpwd" type="password" placeholder="password" />
                        </div>
                    </div>
                </div>
                
                
                <div class="form-actions">
                <span class="pull-right"><button type="submit" class="btn btn-primary" >login</button></span>
                    <span class="pull-left"><button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">register</button></span>
                    
                </div>
            </form>
        </div> 
        
        <!-- 注册的模态框 -->>
       <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">please enter your register information</h4>
      </div>
      <div class="modal-body">
      <!---->
      <form class="form-horizontal" role="form" action="<%=request.getContextPath()%>/register"  method="get"> 
  <div class="form-group">
    <label for="userName" class="col-sm-2 control-label">username</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="userName" placeholder="username" name="username">
    </div>
  </div>
  <div class="form-group">
    <label for="password" class="col-sm-2 control-label">password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="password" placeholder="password" name="userpwd">
    </div>
  </div>
  <div class="form-group">
    <label for="rePassword" class="col-sm-2 control-label">repeat password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="rePassword" placeholder="repeat password" name="rePassword" onblur="checkPassword()">
    </div>
  </div>
   <div class="form-group">
    <label for="rePassword" class="col-sm-2 control-label">Mail</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="mail" placeholder="mail address" name="mail">
    </div>
   <div class="form-group">
    <label for="rePassword" class="col-sm-2 control-label">Phone</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="phone" placeholder="phone number" name="phone">
    </div>
  </div>
  
  </div>
   <div class="form-group">
    <label for="rePassword" class="col-sm-2 control-label">Address</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="address" placeholder="address" name="address">
    </div>
  </div>
   <div class="form-group">
    <label for="rePassword" class="col-sm-2 control-label">Credit Card</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="cardNo" placeholder="credit card number" name="cardNo" onblur="checkNull()">
    </div>
  </div>

</select>
    </div>
  </div>
   <div class="modal-footer">
   <button type="button" class="btn btn-default" data-dismiss="modal">cancel</button>
   <button class="btn btn-primary"  type="submit">commit</button>
   </div>
</form>
  </div>

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

        <script src="js/jquery.min.js"></script>  

        <script src="js/unicorn.login.js"></script> 
        <script src="js/bootstrap.min.js"></script> 
    </body>
</html>      
         