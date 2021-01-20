<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Login</title>
    <base href="${pageContext.servletContext.contextPath}/">
   <meta name="viewport" content="width=device-width, initial-scale=1">
	<style>
	body {font-family: Arial, Helvetica, sans-serif;}
	form {border: 3px solid #f1f1f1;}
	
	
	form
	{
	   width: 750px ;
	   height: 600px;
	   box-sizing: border-box;
	   text-align: left;
	   display: inline-block;
	  margin: 100px 600px 600px 400px;
	}
	
	input[type=text], input[type=password] {
	  width: 50%;
	  padding: 20px 40px;
	  margin: 40px 600px -100px 170px;
	  display: inline-block;
	  border: 1px solid #ccc;
	  box-sizing: border-box;
	  font-size: 18px;
	}
	
	button {
	  background-color: #cc0052;
	  color: white;
	   display: inline-block;
	  padding: 25px 10px;
	  margin: 45px 0 30px 270px;
	  border: none;
	  cursor: pointer;
	  font-size: 20px;
	  width: 50%;
	}
	
	button:hover {
	  opacity: 0.8;
	}
	
	.cancelbtn {
	  width: auto;
	  padding: 10px 18px;
	  background-color: #f44336;
	}
	
	.imgcontainer {
	  text-align: left;
	  width: 120%;
	  margin: -80px -30px -30px 200px;
	}
	
	img.avatar {
	  width: 35%;
	  border-radius: 10%;
	}
	
	.container {
	  padding: 16px;
	}
	
	span.psw {
	  float: center;
	  display: inline-block;
	  margin: -50px 60px 0px 600px;
	  padding-top: 16px;
	}
	
	/* Change styles for span and cancel button on extra small screens */
	@media screen and (max-width: 300px) {
	  span.psw {
	     display: block;
	     float: none;
	  }
	  .cancelbtn {
	     width: 100%;
	  }
	}
	</style>
</head>
<body onload="myFunction()"> 
		
	${message}
<form:form action="admin/login.htm" method="post" modelAttribute="account">
	  <div class="container">
	     <div class="imgcontainer">
	    <img src="images/logo.png" alt="Avatar" class="avatar" >
	  </div>
	    <br>
	    <input type="text" placeholder="Enter Email" name="email" required>
	    <br>
	    <br>
	     <br><br>
	    <input type="password" placeholder="Enter Password" name="password" required>
	     <br><br>
	    <button type="submit" style="padding: 15px; width: 150px">Login</button>
	    <br>
	    <span class="psw" > <a href="admin/forgot.htm">Forgot password?</a></span>
	  </div>
</form:form>
<script>
function myFunction() {
  var person = prompt("Please enter your name", "Mề ta nì sa la hế hê! Ề ế ê ê ê");
  if (person != null) {
    document.getElementById("demo").innerHTML =
    "Hello " + person + "! How are you today?";
  }
}
</script>
</body>
</html>