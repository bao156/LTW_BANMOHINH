<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
 	table> tr.title
 	{
 		text-align: center;
 		color: red;
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
  #myInput 
  {
  background-image: url('images/search.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  background-size: 25px 25px;
  width: 20%;
  font-size: 16px;
  padding: 5px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
   margin-left: 150px;
  }
 	
 </style>
</head>
<body>
	<h1>DANH SÁCH SẢN PHẨM</h1>
	<form action="admin/product/insert.htm">
		<button type="submit"><i class="fa fa-plus">THÊM MỚI</i></button>
		<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">
	</form>
	
	<table style="margin-top: 20px" id="myTable">
		<tr class="title">
			<th style="background: #555; color: #ddd;text-align: center; width: 15%"></th>
			<th style="background: #555; color: #ddd;text-align: center; width: 15%">MÃ SẢN PHẨM</th>
			<th style="background: #555; color: #ddd;text-align: center;">TÊN SẢN PHẨM</th>
			<th style="background: #555; color: #ddd;text-align: center">LOẠI</th>
			<th style="background: #555; color: #ddd;text-align: center;width: 8%">SỐ LƯỢNG</th>
			<th style="background: #555; color: #ddd;text-align: center;">ĐƠN GIÁ</th>
			<th style="background: #555; color: #ddd;text-align: center;"></th>
			<th style="background: #555; color: #ddd;text-align: center;"></th>
		</tr>
		<c:forEach var="s" items="${product}">	
			<tr>
				<td><img src="images/${ s.productType}/${s.imageSource}" style="width: 100px"></td>
				<td> ${ s.id}</td>
				<td> ${ s.productName} </td>
				<td style="text-align: center"> ${ s.productType}</td>
				<td  style="text-align: center"> ${ s.quantity}</td>
				<td  style="text-align: center"> ${ s.price}</td>
				<td><a href="admin/product/delete/${s.id}.htm">Delete</a></td>
				<td><a href="admin/product/update/${s.id}.htm">Update</a></td>	
			</tr>
		</c:forEach>
		
	</table>
	<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  var check=false;
  for (i = 0; i < tr.length; i++)
  {
    td = tr[i].getElementsByTagName("td")[1];
    td1=tr[i].getElementsByTagName("td")[2];
    if (td)
    {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) 
      {
        tr[i].style.display = "";
        check=true;
      } else 
      {
        tr[i].style.display = "none";
      }
      
    }    
    
    if (td1 && check==false) {
        txtValue1 = td1.textContent || td1.innerText;
        if (txtValue1.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
          check=true;
        } 
        else
        {
          tr[i].style.display = "none";
        }
        
      }
    

 
  }
}
</script>
</body>
</html>