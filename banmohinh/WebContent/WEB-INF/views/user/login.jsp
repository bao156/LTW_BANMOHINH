<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <base href="${pageContext.servletContext.contextPath}/">
     <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
    <script type="text/javascript">
    	$(document).ready(function (){
    		$('.get').click(function(){
    			var email = prompt("Please enter your name", "Mề ta nì sa la hế hê! Ề ế ê ê ê");
    			$.ajax({
    				type: 'POST',
    				url:'shop/forgot/'+email+'.htm',
    				success: function(data)
    				{
    					alert(data);
    				}
    				
    			});
    		});
    			
    	});
    
    
    </script>
 	
   <style>
div.login-div form
 {
  border-radius: 5px;
  background-color: #ffffff;
  padding: 20px;
  width: 75%;
  border-top: 10px solid #00b3b3;
  margin-left: 200px;
}
div.login-div h1 
{
   	text-align:center;
   	font-size: 50px;
   	padding: 50px;
   	font-family:  courier;
    color:#003333;	
   			
}

div.login-div form>input,label {

  margin-left: 300px;
  margin-bottom: 30px;
  color:#003333;
  font-size: 20px;
  height: 50px;
}

div.login-div form>button {

  margin-left: 450px;
	  color: white;
	   display: inline-block;
	  padding: 25px 10px;
	  border: none;
	  cursor: pointer;
	  font-size: 20px;
	  width: 50%;
  
}
div.login-div button:hover 
	{
	  opacity: 0.8;
	}
   </style>
</head>
<body > 
		
		
	<div class="login-div"><!-- main -->
		<form:form action="shop/login.htm" modelAttribute="account" method="post"  autocomplete="off">
		  <h1 style=" color:#003333">Đăng nhập</h1>
						
			<label for="reg_email">Địa chỉ email&nbsp;<span class="required" style="color:red" >*</span></label>				
			<form:input path="email" style="width:50% " type="text" placeholder="Your Email.." autocomplete="off"/>
				<br><br>
						
			<label>Mật khẩu<strong style="color:red">*</strong></label>
			<br>
		
			<form:input path="password" style="width:50%" type="password" placeholder="Your Password.." autocomplete="off"/>
			
			<a  class="get" style="font-size:20px; margin-left: 700px;color:#006666;margin-top:  ">Quên mật khẩu?</a>
			<br><br>	
			
		    <button type="submit" style="padding: 20px; width: 150px;background-color: #008080;border-radius: 20px">Login</button>
			
		</form:form>
		

</div><!-- end main content -->

</body>
</html>