<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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

div.login-div 
 {
  border-radius: 5px;
  background-color: #ffffff;
  padding: 20px;
  width: 1080px;
  height: 1200px;
  border-top: 10px solid #00b3b3;
  margin-left: 0px;
  margin-top: -400px;
}
div.login-div h3
{
   	text-align:left;
   	font-size: 45px;
   	padding: 50px;
   	font-family:  courier;
    color:#003333;	
   			
}

div.login-div input,label {

  margin-left: 300px;
  margin-bottom: 30px;
  color:#003333;
  font-size: 20px;
  height: 50px;
}

div.login-div button {

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
	
	
div.login-div2 
 {
  border-radius: 5px;
  background-color: #ffffff;
  padding: 20px;
  width: 30%;
  height: 400px;
  border-top: 10px solid #00b3b3;
  margin-left: 1100px;
}
div.login-div2 h3
{
   	text-align:left;
   	font-size: 45px;
   	padding: 50px;
   	font-family:  courier;
    color:#003333;	
   			
}

div.login-div2 input,label {

  margin-left: 300px;
  margin-bottom: 30px;
  color:#003333;
  font-size: 20px;
  height: 50px;
}

div.login-div2 button {

  margin-left: 450px;
	  color: white;
	   display: inline-block;
	  padding: 25px 10px;
	  border: none;
	  cursor: pointer;
	  font-size: 20px;
	  width: 50%;
  
}
	
	
   </style>
   

   
   
   
</head>
<body > 
		
		<div class="login-div2"><!-- main -->
	    <h3 style=" color:#003333">Cart Totals</h3>
			  		<h4 style="border-bottom: 2px solid #008080"></h4>

					<button onclick="myFunction()" style="background-color: #008080; margin-left: 65px"><a href="shop/bill/${id}.htm" >Xác nhận mua hàng</a>	</button>	
		</div>
				
		<div class="login-div"><!-- main -->
		  <h3 style=" color:#003333">Shopping Cart</h3>
							<table style="margin-top: 20px" id="myTable">
				<tr class="title">
					<th style="background: #555; color: #ddd;text-align: center; width: 15%"></th>
					<th style="background: #555; color: #ddd;text-align: center; "></th>
					<th style="background: #555; color: #ddd;text-align: center;width: 20%">TÊN SẢN PHẨM</th>
					<th style="background: #555; color: #ddd;text-align: center">ĐƠN GIÁ</th>
					<th style="background: #555; color: #ddd;text-align: center;width: 8%">SỐ LƯỢNG</th>
					<th style="background: #555; color: #ddd;text-align: center;">TỔNG PHỤ</th>
					<th style="background: #555; color: #ddd;text-align: center;"></th>
					<th style="background: #555; color: #ddd;text-align: center;"></th>
				</tr>
	
			
				<c:forEach var="c" items="${cart}" varStatus="status" >	
					<tr style="border-bottom: 2px solid gray">
						<td style="text-align: center;"><a href="shop/cart/delete/${c.productId.id}.htm">x</a></td>
						<td style="height: 220px;"><img src="images/${c.productId.productType}/${c.productId.imageSource}" width="150px" height="150px"></td>
						<td >${c.productId.productName}</td>
						<td style="text-align: center;">${c.productId.price}</td>
						<td ><input type="number" min="1" max="${c.productId.quantity}" value="${c.quantity}" style="margin-left: -7px; margin-bottom: 0px"  href="shop/product.htm" id="quantitycart"></td>
						<td style="text-align: center;">${c.productId.price*c.quantity}</td>
					</tr>
				</c:forEach>
		
		</table>	
			
		
		</div>
		

<script>
	function myFunction() {
		

		alert('THÊM THÀNH CÔNG');

	}

</script>

		



</body>
</html>