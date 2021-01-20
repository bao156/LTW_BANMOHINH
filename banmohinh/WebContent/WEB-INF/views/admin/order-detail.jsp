<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
 	#myInput {
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
	<h1>CHI TIẾT HÓA ĐƠN</h1>
	<form action="admin/product/insert.htm">
	<div>
		<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for.." title="Type in a name">
	</div>
	</form>
	<table style="margin-top: 20px" id="myTable">
		<tr class="title">
			<th style="background: #555; color: #ddd;text-align: center; width: 10%"></th>
			<th style="background: #555; color: #ddd;text-align: center; width: 10%">MÃ HÓA ĐƠN</th>
			<th style="background: #555; color: #ddd;text-align: center;">TÊN SẢN PHẤM</th>
			<th style="background: #555; color: #ddd;text-align: center;">SỐ LƯỢNG</th>
			<th style="background: #555; color: #ddd;text-align: center;">TỔNG PHỤ</th>
			<th style="background: #555; color: #ddd;text-align: center;"></th>
		</tr>
		<c:forEach var="s" items="${orders}" varStatus="status">	
			<tr>
				<td style="text-align: center;"> <img src="images/${s.productId.productType}/${s.productId.imageSource}" height="100px" width="100px" style="margin-top: 20px"></img></td>
				<td style="text-align: center;"> ${s.orderId.id}</td>
				<td> ${s.productId.productName}</td>
				<td style="text-align: center;"> ${ s.quantity}</th>
				<td style="text-align: center;"> ${ s.quantity*s.productId.price}</th>
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
    td1=tr[i].getElementsByTagName("td")[0];
    td2=tr[i].getElementsByTagName("td")[4];
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
    
    if (td1 && check==false) 
    {
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
    if (td2 && check==false) {
        txtValue2 = td2.textContent || td2.innerText;
        if (txtValue2.toUpperCase().indexOf(filter) > -1) {
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