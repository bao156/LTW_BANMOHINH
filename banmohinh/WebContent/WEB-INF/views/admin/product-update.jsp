<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
 	<base href="${pageContext.servletContext.contextPath}/">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <meta charset="UTF-8">
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
 	form
 	{
 		margin-left: 500px;
 	}
 form>div
 	{
 		margin-top: 50px;
 	}
 	input
 	{
 		width:30%;
 		margin-left: 50px;
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
	<h1> CẬP NHẬT SẢN PHẨM </h1>
	<form:form action="admin/product/update.htm" modelAttribute="product" enctype="multipart/form-data">
		<div>
			<label>ID&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</label>
			<form:input path="id" value="${id}" readonly="true"/>
		</div>
		<div>
			<label>Tên sản phẩm</label>
			<form:input path="productName" value="${productName}"/>
		</div>
		<div>
			<label>Loại sản phẩm</label>
			 <form:select path="productType" style="width:30%; margin-left:50px;font-size: 18px " value="${productType}">
			    <option value="onepiece">One Piece</option>
			    <option value="fairytail">Fairy Tail</option>
			    <option value="naruto">Naruto</option>
			    <option value="pokemon">Pokemon</option>
			    <option value="fate">Fate Stay Night</option>
			  </form:select>
		</div>
		<div>
			<label>Số lượng&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</label>
			<form:input path="quantity" style="margin-left: 50px" value="${quantity}"/>
		</div>
		<div >
			<label>Đơn Giá &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</label>
			<form:input path="price" value="${price}"/>
		</div>
		<div>
			<label>Hình ảnh </label>
			<input type="file" name="image" style="margin-top:-40px;margin-left: 150px" value="${imageSource}">
		</div>
		<div>
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