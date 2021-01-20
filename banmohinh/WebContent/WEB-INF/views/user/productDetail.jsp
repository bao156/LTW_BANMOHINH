<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <base href="${pageContext.servletContext.contextPath}/">
	<!-- BOOTSTRAP STYLES-->
    <link href="css/style.css" rel="stylesheet" />
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
    <style type="text/css">
    	div.product-arrange
    	{
    		margin-top: 450px;
    		margin-left:330px;
    		width:380px;
    		height:900px;

    	}
    	div.archive-products-1
    	{
    	
    		margin-top: -900px;
    		width:1150px;
    	}
    	div.page-list
    	{
    		margin-top: -50px;
    		margin-left:800px;
    	}
    	div.product-arrange
    	{
    		margin-top: -440px;
    		margin-left:-150px;
    		width:380px;
    		height:750px;

    	}
    	div.description
		{
			margin-top: -570px;
    		margin-left:400px;
    		width:670px;
    		height:750px;
		}
		form
		{
		position:relative;
		margin-left:500px;
		width:1000px;
		}    

    	
    
    </style>

</head>
<body>
	<div id="main" class="column2 column2-left-sidebar boxed no-breadcrumbs"><!-- main -->

			<div class="container">
			<div class="row main-content-wrap">

			<!-- main content -->
			<div class="main-content col-lg-9">

	

<div id="primary" class="content-area"><main id="content" class="site-main" role="main">

<div class="box">
      
      <ul>
       	  <li><span style="background:#00cccc">1</span><a href="shop/product/onepiece.htm" style="color:black">ONE PIECE</a></li>
          <li><span style="background:#00cccc">2</span><a href="shop/product/fate.htm" style="color:black">FATE STAY NIGHT</a></li>
          <li><span style="background:#00cccc">3</span><a href="shop/product/pokemon.htm"  style="color:black">POKEMON</a></li>
          <li><span style="background:#00cccc">4</span><a href="shop/product/fairytail.htm"  style="color:black">FAIRY TAIL</a></li>
          <li><span style="background:#00cccc">5</span><a href="shop/product/naruto.htm"  style="color:black">NARUTO</a></li>
      </ul>
 </div>		
</div>



<!-- SẢN PHẨM 1 -->	
<div class="product-arrange" >
<form:form  action="shop/cart.htm" modelAttribute="p" method="post">
	


		<ul class="products products-container grid pcols-lg-3 pcols-md-3 pcols-xs-2 pcols-ls-2 pwidth-lg-3 pwidth-md-3 pwidth-xs-2 pwidth-ls-1" data-product_layout="product-wq_onimage">
			
			<li class="product-col product-wq_onimage product type-product post-119216 status-publish first instock product_cat-kiem-ke-go product_tag-diet-quy-cuu-nhan product_tag-ha-tru product_tag-kiem-ha-tru product_tag-kiem-kimetsu-no-yaiba product_tag-kiem-tokitou-muichirou product_tag-kimetsu-no-yaiba product_tag-nhat-luan-kiem product_tag-thanh-guom-diet-quy product_tag-tokitou-muichirou has-post-thumbnail shipping-taxable purchasable product-type-simple">
				<div class="product-inner">
					
					<div class="product-image">
		
						<a href="https://takishop.vn/phu-kien-cosplay/kiem-ke-go/kiem-go-ha-tru-den-tokitou-muichirou-1m-vo-abs.html">
							<div class="inner" style="width:320px;height: 420px">
							<img width="400px" style="height:420px;" src="images/${p.productType}/${p.imageSource}" class=" wp-post-image" alt="" loading="lazy"></div>		</a>
							<div class="links-on-image">
						<div class="add-links-wrap">
							
						</div>
						</div>
					</div>
		
					<div class="product-content">
						<span class="category-list">
							<a style="font-size: 22px">${p.productType}
							</a>
						</span>
						
							<a class="product-loop-title" style="font-size: 22px">
								${p.productName}
							</a>
					
						<br><br>
						<span class="price">
							<span class="woocommerce-Price-amount amount">
									<bdi style="font-size: 22px;margin-top:15px">${p.price}<span class="woocommerce-Price-currencySymbol">₫</span>
									</bdi>
							</span>	
						</span>
		
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added">
								
									</div>
						<input type="hidden" name="productid" value="${p.id}"/>			
								 
							</div>
						</div>
					</div>
				</div>
			</li>
	
			</ul>
		
		<div style="font-size: 30px">
					<input id="getquantity" type="number" min="1" max="${p.quantity}" name="quantitybuy" value="1"  style="margin-top: -80px;margin-left: 130px;width: 100%px;position: absolute;font-size: 25px">
					<p id="cat"></p>
					<form:button href="shop/cart.htm" id="get" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" rel="nofollow" style="height:40px;font-size: 18px;margin-left:80px; position: absolute;margin-top: -40px; background-color:#003333">Thêm vào giỏ hàng</form:button>	
					<br><br><br>
		
		</div>
		
		
		
		<div class="description" style="margin-top: -700px;">
		<h1>TÊN SẢN PHẨM: ${p.productName}</h1>
		<h3>GIÁ:&nbsp;${p.price}đ</h3>
		<h1><strong></strong></h1>
		<h3><strong>SỐ LƯỢNG CÒN:&nbsp;&nbsp;${p.quantity}</h3>
		<h3><strong>MÃ SẢN PHẨM:&nbsp;&nbsp;${p.id}</strong></h3>
		<h3><strong>DANH MỤC:&nbsp;&nbsp;${p.productType}</strong></h3>
 		
		</div>
		
		<div style="margin-top: -130px;font-size: 20px">
		<br><br>
			<p>Vicent Shop chuyên cung cấp các mặt hàng chuyên về tượng, mô hình anime Nhật Bản.</p>
			<p>Hãy đến với Vincent Shop bạn sẽ trải nghiệm cũng như có cơ hội mang về các mô hình ưng ý.</p>
			<p>!WIBU FOREVER!</p>
		</div>	
			
</form:form>


	</main></div>


</div><!-- end main content -->



</script>
</body>
</html>