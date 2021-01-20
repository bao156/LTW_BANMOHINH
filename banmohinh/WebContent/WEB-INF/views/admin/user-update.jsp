<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <base href="${pageContext.servletContext.contextPath}/">
   <style type="text/css">
   	h1
 	{
 	color:black; 
 	margin-top: 100px ; 
 	margin-left: 500px;
 	font-family: sans-serif;
 	font-weight: lighter;
 	font-style:italic;
 	text-transform: capitalize;
 	}
	form>div
	{
	margin-top: 50px;
	}
 	input
 	{
 		width:20%;
 		margin-left: 50px;
 	}
 	#left
 	{
 		margin-left: 200px;
 		margin-top: 60px;
	}
	#right
	{
	margin-left: 150px;
	}
	 	button
 	{
 		margin-top: -10px ;
 		width:10%; 
 		height:50px;
 		font-family: sans-serif;
 		margin-left: 1200px;
 		 background-color: white; 
 		border: 2px solid #008080;
  		color: black;
  		transition-duration: 0.4s;
  		cursor: pointer;
  		display: inline-block;
  		border-radius: 20px;
 	}
 	button:hover
 	{
 		background-color:gray;
 		color: white;
 	}
   
   
   </style>
</head>
<body>
	<h1> CẬP NHẬT THÔNG TIN NGƯỜI DÙNG </h1>
		<form:form action="admin/user/update.htm" modelAttribute="user">
		<div id="left">
			<label>ID Khách hàng:</label>
			<form:input path="id" value="${id}" readonly="true"/>
			<label id="right">Ngày sinh:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</label>
			<form:input type="date" path="birthday" value="${birthday}" />
		</div>
		
		
		</div>
		<div id="left">
			<label style="	margin-left: 205px;">Họ:</label>
			<form:input path="firstName" value="${firstName}" />
			<label id="right" style="margin-left: 195px">Tên:&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</label>
			<form:input path="lastName" value="${lastName}" />
		</div>

		
		<div id="left">
				<label style="margin-left: 140px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Địa chỉ:</label>
				<form:input path="address" value="${address}"/>
				<label id="right" style="margin-left: 185px">Email:&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</label>
				<form:input path="email" value="${email}" />
		</div>
		
		<div id="left">
			<label style="margin-left: 140px">Số điện thoại:</label>
			<form:input path="phone" value="${phone}" />
		</div>
		
		
		<div id="left" style="margin-left: 700px" >
		<form:button style="margin-left:100px;width:20%" onclick="myFunction()">Lưu</form:button>
		</div>
	
	</form:form>
	
	<script type="text/javascript">      
		function myFunction() {
			alert("Cập nhật thành công")
			}
    </script>

	
</body>
</html>