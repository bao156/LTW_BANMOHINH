<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <style type="text/css">
   		h1
   		{
   			text-align:center;
   				font-size: 50px;
   				padding: 50px;
   				font-family:  courier;
   				color:#003333;	
   		}
   		 form
   			{
   				background-color: white;
   				width:90%;
   				margin-left: 100px;
   				border-top:10px solid #00b3b3;
   			}
   		div.user-name
		{
			position:relative;
			margin-left: 1350px;
			margin-top: -120px;
			margin-bottom: 150px;
		}

   </style>
</head>
<body>
	<div class="user-name"/>
			<h4 ><i class="far fa-user" style="color:black">${getname}!</i></h4>
			<input type="hidden" value="${getmail}"/>
	</div>
			<form:form>
						<h1 style="text-align: center;">Giới thiệu Vicent Shop</h1>
						<h2><a href="shop/product.htm" target="_blank" rel="noopener noreferrer"><strong style="color:#003333; margin-left: 50px" >Vicent Shop</strong></a> với tiêu chí là thiên đường dành cho fan Manga Anime nên shop quy tụ hầu hết các sản phẩm đặc trưng của truyện tranh và hoạt hình Nhật Bản.</h2>
						<p style="margin-left: 30px">Gian hàng của <strong>Mlem Shop</strong> nổi bật với các sản phẩm như các tượng (figure), tượng lắp ráp (nendoroid, figma), tượng theo bộ, các phụ kiện dành cho cosplay như kẹp tai mèo, tai thỏ, phi tiêu, kiếm gỗ. Ngoài ra, shop còn có các sản phẩm như bóp ví, túi xách, balo, đồng hồ, nón, thú bông, búp bê, áo thun của Anime Manga.</p>
						<p style="margin-left: 30px">Shop đã hoạt động hơn 3 năm nay. Bạn có thể mua hàng tại địa chỉ <em>97 Man Thiện, P. Hiệp Phú, Q.9, TPHCM</em> hoặc mua hàng online tại:</p>
						<ul>
							<li>Trang chủ <a href="shop/product.htm" target="_blank" rel="noopener noreferrer" style="color:#00cccc">http://VCShop.vn</a></li>
							<li>Fanpage: <a href="https://www.facebook.com/profile.php?id=100006419774480" target="_blank" rel="noopener noreferrer" style="color:#00cccc">https://www.facebook.com/profile.php?id=100006419774480</a></li>
						</ul>
								
							
						
						<div class="wpb_gmaps_widget wpb_content_element">
							<div class="wpb_wrapper">
								<div class="wpb_map_wraper">
									<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15674.086201208702!2d106.786132!3d10.8478795!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb838977f3d419d!2zSOG7jWMgdmnhu4duIEPDtG5nIG5naOG7hyBCxrB1IGNow61uaCBWaeG7hW4gdGjDtG5nIEPGoSBT4bufIFThuqFpIFRQLiBI4buTIENow60gTWluaMK3!5e0!3m2!1svi!2s!4v1604869195240!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0">
									</iframe>
								</div>
							</div>
						</div>
			
			</form:form>
	
								
								
				
					
	
</body>
</html>