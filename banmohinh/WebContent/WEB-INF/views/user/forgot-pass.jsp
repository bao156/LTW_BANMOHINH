<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <base href="${pageContext.servletContext.contextPath}/">
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
	<h3>${message}</h3>
	<div class="login-div"><!-- main -->
		<form:form action="shop/newpass.htm" modelAttribute="account" method="post"  autocomplete="off">
		  <h1 style=" color:#003333">THAY ĐỔI MẬT KHẨU</h1>
			<form:hidden path="email" value="${account.email}" />
			<form:hidden path="role" value="${account.role}" />
			<label for="reg_email">Mật khẩu mới&nbsp;<span class="required" style="color:red" >*</span></label>				
			<form:input path="password" style="width:50% " type="password" placeholder="Your email.." autocomplete="off"/>
				<br><br>
						
			<label>Nhập lại mật khẩu mới<strong style="color:red">*</strong></label>
			<br>
		
			<input name="new-password" style="width:50%" type="password" placeholder="Your password again.." autocomplete="off"/>
			
			<br><br>	
			
		    <button type="submit" style="padding: 20px; width: 150px;background-color: #008080;border-radius: 20px">Login</button>
			
		</form:form>
		

</div><!-- end main content -->

</body>
</html>