<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <base href="${pageContext.servletContext.contextPath}/">
   <style>
   			h1
   			{
   				text-align:center;
   				font-size: 50px;
   				padding: 50px;
   				font-family:  courier;
   				color:#003333;	
   			}
   			div.u-columns col2-set
   			{
   				font-size: 30px;
   			
   			}
   			div.div-register 
   			{
   				
   				height: 700px;
   			}
   			div.div-register form
   			{
   				background-color: white;
   				width:80%;
   				margin-left: 200px;
   				border-top:10px solid #00b3b3;
   			}
   			div.div-register form>p
   			{
   			width:40%;
   
   		
   			}
   			div.div-register form>p>input
   			{
   			height: 60px;
   
   		
   			}
   			
   
   </style>
</head>
<body>
		
	<div class="div-register"><!-- main -->

		<form:form action="shop/register.htm" modelAttribute="user" method="post" >
			
			<h1>Đăng ký</h1>
			<p class="form-row form-row-first" style="margin-left: 50px">
				<label for="reg_billing_first_name">First Name<span class="required">*</span></label>
				<form:input path="firstName" placeholder="Your Frist Name.." />	
			</p>
					
			<p class="form-row form-row-last" style="margin-right: 100px">
				<label for="reg_billing_last_name">Last Name<span class="required">*</span></label>
				<form:input path="lastName" placeholder="Your Last Name .."/>
			</p>
					
			<p class="form-row form-row-last" style="margin-right: 100px">
				<label for="reg_billing_last_name">Địa chỉ<span class="required">*</span></label>
				<form:input path="address" placeholder="Your Address.."/>
			</p>
			
								
			<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide" style="margin-left: 50px">
				<label for="reg_email">Email&nbsp;<span class="required">*</span></label>
				<form:input path="email" placeholder="Your Email.."/>					
			</p>
					
			<p class="form-row form-row-last" style="margin-right: 100px">
				<label for="reg_billing_last_name">Số điện thoại<span class="required">*</span></label>
				<form:input path="phone" placeholder="Your Phone.."/>
			</p>
			
					
			<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide" style="margin-left: 50px">
				<label for="reg_password">Mật khẩu&nbsp;<span class="required">*</span></label>
				<input type="password" name="password" placeholder="Your Password.."/>
			</p>
			<p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide" style="margin-left: 50px">
				<label for="reg_password">Ngày sinh	&nbsp;<span class="required">*</span></label>
				<form:input type="date" path="birthday"/>
			</p>

			<p class="woocommerce-form-row form-row">
				<input type="hidden" id="woocommerce-register-nonce" name="woocommerce-register-nonce" value="abccc6dae3"><input type="hidden" name="_wp_http_referer" value="/tai-khoan">						
				<button type="submit" onlick="myFunction()"style="padding: 20px; width: 150px;background-color: #008080;border-radius: 20px;margin-left: 550px" onclick="myFunction()">Xác nhận</button>
			</p>	
		</form:form>

	</div><!-- end main content -->
		<script type="text/javascript">      
		function myFunction() {
			alert("Đăng kí thành công")
			}
    </script>
</body>
</html>