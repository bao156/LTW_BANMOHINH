<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>	
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <base href="${pageContext.servletContext.contextPath}/">
	<!-- BOOTSTRAP STYLES-->
    <link href="css/style.css" rel="stylesheet" />
    <style type="text/css">
   		 div.user-name
		{
			position:relative;
			margin-left: 1350px;
			margin-top: -120px;
			margin-bottom: 150px;
		
		}
    	div.product-arrange
    	{
    		margin-top: 450px;
    		margin-left:300px;
    		width:1200px;
    		height:900px;
    	
    
    	}
    	div.archive-products-1
    	{
    	
    		margin-top: -900px;
    		width:700px;
    	}
    	 div.archive-products-2
    	{
    		margin-left:280px;
    		margin-top: -410px;
    		width:700px;
    	}
    	 div.archive-products-3
    	{
    		margin-left:560px;
    		margin-top: -410px;
    		width:700px;
    	}
    	 div.archive-products-4
    	{
    		margin-left:840px;
    		margin-top: -410px;
    		width:700px;
    	}
    	 div.archive-products-5
    	{
    		margin-top: 70px;
    		width:700px;
    	}
    	 div.archive-products-6
    	{
    		margin-top: -430px;
    		margin-left:280px;
    		width:700px;
    	}
    	 div.archive-products-7
    	{
    		margin-top: -400px;
    		margin-left:560px;
    		width:700px;
    	}
    	 div.archive-products-8
    	{
    		margin-top: -410px;
    		margin-left:840px;
    		width:700px;
    	}
    	div.page-list
    	{
    		margin-top: -50px;
    		margin-left:800px;
    				
    	}
    	
	
    
    </style>

</head>
<body>
	<div class="user-name"/>
			<h4 ><i class="far fa-user" style="color:black">${getname}!</i></h4>
			<input type="hidden" value="${getmail}"/>
	</div>
	<div id="main" class="column2 column2-left-sidebar boxed no-breadcrumbs"><!-- main -->

			<div class="container">
			<div class="row main-content-wrap">

			<!-- main content -->
			<div class="main-content col-lg-9">



<div id="primary" class="content-area"><main id="content" class="site-main" role="main">

<div class="box" style="width:300px ;margin-left: -100px">
      
      <ul style="width: 350px;">
       	  <li><span style="background:#00cccc">1</span><a href="shop/product/onepiece.htm" style="color:black;">ONE PIECE</a></li>
          <li><span style="background:#00cccc">2</span><a href="shop/product/fate.htm" style="color:black">FATE STAY NIGHT</a></li>
          <li><span style="background:#00cccc">3</span><a href="shop/product/pokemon.htm"  style="color:black">POKEMON</a></li>
          <li><span style="background:#00cccc">4</span><a href="shop/product/fairytail.htm"  style="color:black">FAIRY TAIL</a></li>
          <li><span style="background:#00cccc">5</span><a href="shop/product/naruto.htm"  style="color:black">NARUTO</a></li>
      </ul>
 </div>		
</div>

<form:form action="" method="post" modelAttribute="list">

<!-- SẢN PHẨM 1 -->	
<!--  -->
<div class="product-arrange" >
	<div class="archive-products-1">
	
		<ul class="products products-container grid pcols-lg-3 pcols-md-3 pcols-xs-2 pcols-ls-2 pwidth-lg-3 pwidth-md-3 pwidth-xs-2 pwidth-ls-1" data-product_layout="product-wq_onimage">
			
			<li class="product-col product-wq_onimage product type-product post-119216 status-publish first instock product_cat-kiem-ke-go product_tag-diet-quy-cuu-nhan product_tag-ha-tru product_tag-kiem-ha-tru product_tag-kiem-kimetsu-no-yaiba product_tag-kiem-tokitou-muichirou product_tag-kimetsu-no-yaiba product_tag-nhat-luan-kiem product_tag-thanh-guom-diet-quy product_tag-tokitou-muichirou has-post-thumbnail shipping-taxable purchasable product-type-simple">
				<div class="product-inner">
					
					<div class="product-image">
		
						<a href="shop/product/detail/${list[0].id}.htm">
							<div class="inner"><img width="250" height="300" src="images/${list[0].productType}/${list[0].imageSource}" class=" wp-post-image" alt="" loading="lazy"></div>		</a>
							<div class="links-on-image">
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added"><button type="button" value="-" class="minus">-</button>
									<input type="number" id="quantity_5f906defaeafe" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
									<button type="button" value="+" class="plus">+</button></div>
									<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Kiếm Gỗ Hà Trụ Đen Tokitou Muichirou 1m - Vỏ ABS” vào giỏ hàng" rel="nofollow">Mua hàng</a>
									<div class="quickview" data-id="119216" title="Xem nhanh" style="background-color:#00b3b3;">Xem nhanh</div>	
							</div>
						</div>
						</div>
					</div>
		
					<div class="product-content">
						<span class="category-list">
							<a href="shop/product/${list[0].productType}.htm" rel="tag">${list[0].productType}
							</a>
						</span>
							<a class="product-loop-title" href="shop/product/detail/${list[0].id}.htm" >
								<h3 >${list[0].productName}</h3>	
							</a>
					
						
						<span class="price">
							<span class="woocommerce-Price-amount amount">
									<bdi>${list[0].price}<span class="woocommerce-Price-currencySymbol">₫</span>
									</bdi>
							</span>
						</span>
		
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added">
										<button type="button" value="-" class="minus">-</button>
										<input type="number" id="quantity_5f906defaf05c" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
										<button type="button" value="+" class="plus">+</button>
									</div>
								<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Tượng công chúa Shirahoshi-One Piece” vào giỏ hàng" rel="nofollow">Mua hàng</a><div class="quickview" data-id="119216" title="Xem nhanh">Xem nhanh</div>	
							</div>
						</div>
					</div>
				</div>
			</li>
	
			</ul>
	
   </div>
		
		
	<div class="archive-products-2" >
	
		<ul class="products products-container grid pcols-lg-3 pcols-md-3 pcols-xs-2 pcols-ls-2 pwidth-lg-3 pwidth-md-3 pwidth-xs-2 pwidth-ls-1" data-product_layout="product-wq_onimage">
			
			<li class="product-col product-wq_onimage product type-product post-119216 status-publish first instock product_cat-kiem-ke-go product_tag-diet-quy-cuu-nhan product_tag-ha-tru product_tag-kiem-ha-tru product_tag-kiem-kimetsu-no-yaiba product_tag-kiem-tokitou-muichirou product_tag-kimetsu-no-yaiba product_tag-nhat-luan-kiem product_tag-thanh-guom-diet-quy product_tag-tokitou-muichirou has-post-thumbnail shipping-taxable purchasable product-type-simple">
				<div class="product-inner">
					
					<div class="product-image">
		
						<a href="shop/product/detail/${list[1].id}.htm">
							<div class="inner"><img width="250" height="300"  src="images/${list[1].productType}/${list[1].imageSource}" class=" wp-post-image" alt="" loading="lazy"></div>		</a>
							<div class="links-on-image">
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added"><button type="button" value="-" class="minus">-</button>
									<input type="number" id="quantity_5f906defaeafe" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
									<button type="button" value="+" class="plus">+</button></div>
									<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Kiếm Gỗ Hà Trụ Đen Tokitou Muichirou 1m - Vỏ ABS” vào giỏ hàng" rel="nofollow">Mua hàng</a>
									<div class="quickview" data-id="119216" title="Xem nhanh" style="background-color: #145252;">Xem nhanh</div>	
							</div>
						</div>
						</div>
					</div>
		
					<div class="product-content">
						<span class="category-list">
							<a href="shop/product/${list[1].productType}.htm" rel="tag">${list[1].productType}
							</a>
						</span>
							<a class="product-loop-title" href="shop/product/detail/${list[1].id}.htm">
								<h3 class="woocommerce-loop-product__title"> ${list[1].productName}</h3>	
							</a>
					
						
						<span class="price">
							<span class="woocommerce-Price-amount amount">
									<bdi>${list[1].price}<span class="woocommerce-Price-currencySymbol">₫</span>
									</bdi>
							</span>
						</span>
		
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added">
										<button type="button" value="-" class="minus">-</button>
										<input type="number" id="quantity_5f906defaf05c" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
										<button type="button" value="+" class="plus">+</button>
									</div>
								<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Tượng công chúa Shirahoshi-One Piece” vào giỏ hàng" rel="nofollow">Mua hàng</a><div class="quickview" data-id="119216" title="Xem nhanh">Xem nhanh</div>	
							</div>
						</div>
					</div>
				</div>
			</li>
	
		</ul>
	
	</div>
	
	<div class="archive-products-3" >
	
		<ul class="products products-container grid pcols-lg-3 pcols-md-3 pcols-xs-2 pcols-ls-2 pwidth-lg-3 pwidth-md-3 pwidth-xs-2 pwidth-ls-1" data-product_layout="product-wq_onimage">
			
			<li class="product-col product-wq_onimage product type-product post-119216 status-publish first instock product_cat-kiem-ke-go product_tag-diet-quy-cuu-nhan product_tag-ha-tru product_tag-kiem-ha-tru product_tag-kiem-kimetsu-no-yaiba product_tag-kiem-tokitou-muichirou product_tag-kimetsu-no-yaiba product_tag-nhat-luan-kiem product_tag-thanh-guom-diet-quy product_tag-tokitou-muichirou has-post-thumbnail shipping-taxable purchasable product-type-simple">
				<div class="product-inner">
					
					<div class="product-image">
		
						<a href="shop/product/detail/${list[2].id}.htm">
							<div class="inner"><img width="250" height="300" src="images/${list[2].productType}/${list[2].imageSource}" class=" wp-post-image" alt="" loading="lazy"></div>		</a>
							<div class="links-on-image">
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added"><button type="button" value="-" class="minus">-</button>
									<input type="number" id="quantity_5f906defaeafe" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
									<button type="button" value="+" class="plus">+</button></div>
									<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Kiếm Gỗ Hà Trụ Đen Tokitou Muichirou 1m - Vỏ ABS” vào giỏ hàng" rel="nofollow">Mua hàng</a>
									<div class="quickview" data-id="119216" title="Xem nhanh" style="background-color: #145252;">Xem nhanh</div>	
							</div>
						</div>
						</div>
					</div>
		
					<div class="product-content">
						<span class="category-list">
							<a href="shop/product/${list[2].productType}.htm" rel="tag">${list[2].productType}
							</a>
						</span>
							<a class="product-loop-title" href="shop/product/detail/${list[2].id}.htm">
								<h3 class="woocommerce-loop-product__title">${list[2].productName}</h3>	
							</a>
					
						
						<span class="price">
							<span class="woocommerce-Price-amount amount">
									<bdi>${list[2].price}<span class="woocommerce-Price-currencySymbol">₫</span>
									</bdi>
							</span>
						</span>
		
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added">
										<button type="button" value="-" class="minus">-</button>
										<input type="number" id="quantity_5f906defaf05c" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
										<button type="button" value="+" class="plus">+</button>
									</div>
								<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Tượng công chúa Shirahoshi-One Piece” vào giỏ hàng" rel="nofollow">Mua hàng</a><div class="quickview" data-id="119216" title="Xem nhanh">Xem nhanh</div>	
							</div>
						</div>
					</div>
				</div>
			</li>
	
		</ul>
	
	</div>
	
	
	<div class="archive-products-4" >
	
		<ul class="products products-container grid pcols-lg-3 pcols-md-3 pcols-xs-2 pcols-ls-2 pwidth-lg-3 pwidth-md-3 pwidth-xs-2 pwidth-ls-1" data-product_layout="product-wq_onimage">
			
			<li class="product-col product-wq_onimage product type-product post-119216 status-publish first instock product_cat-kiem-ke-go product_tag-diet-quy-cuu-nhan product_tag-ha-tru product_tag-kiem-ha-tru product_tag-kiem-kimetsu-no-yaiba product_tag-kiem-tokitou-muichirou product_tag-kimetsu-no-yaiba product_tag-nhat-luan-kiem product_tag-thanh-guom-diet-quy product_tag-tokitou-muichirou has-post-thumbnail shipping-taxable purchasable product-type-simple">
				<div class="product-inner">
					
					<div class="product-image">
		
						<a href="shop/product/detail/${list[3].id}.htm">
							<div class="inner"><img width="250" height="300" src="images/${list[3].productType}/${list[3].imageSource}" class=" wp-post-image" alt="" loading="lazy"></div>		</a>
							<div class="links-on-image">
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added"><button type="button" value="-" class="minus">-</button>
									<input type="number" id="quantity_5f906defaeafe" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
									<button type="button" value="+" class="plus">+</button></div>
									<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Kiếm Gỗ Hà Trụ Đen Tokitou Muichirou 1m - Vỏ ABS” vào giỏ hàng" rel="nofollow">Mua hàng</a>
									<div class="quickview" data-id="119216" title="Xem nhanh" style="background-color: #145252;">Xem nhanh</div>	
							</div>
						</div>
						</div>
					</div>
		
					<div class="product-content">
						<span class="category-list">
							<a href="shop/product/${list[3].productType}.htm" rel="tag">${list[3].productType}
							</a>
						</span>
							<a class="product-loop-title" href="shop/product/detail/${list[3].id}.htm">
								<h3 class="woocommerce-loop-product__title">${list[3].productName}</h3>	
							</a>
					
						
						<span class="price">
							<span class="woocommerce-Price-amount amount">
									<bdi>${list[3].price}<span class="woocommerce-Price-currencySymbol">₫</span>
									</bdi>
							</span>
						</span>
		
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added">
										<button type="button" value="-" class="minus">-</button>
										<input type="number" id="quantity_5f906defaf05c" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
										<button type="button" value="+" class="plus">+</button>
									</div>
								<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Tượng công chúa Shirahoshi-One Piece” vào giỏ hàng" rel="nofollow">Mua hàng</a><div class="quickview" data-id="119216" title="Xem nhanh">Xem nhanh</div>	
							</div>
						</div>
					</div>
				</div>
			</li>
	
			</ul>
	
	</div>
	
	<div class="archive-products-5" >
	
		<ul class="products products-container grid pcols-lg-3 pcols-md-3 pcols-xs-2 pcols-ls-2 pwidth-lg-3 pwidth-md-3 pwidth-xs-2 pwidth-ls-1" data-product_layout="product-wq_onimage">
			
			<li class="product-col product-wq_onimage product type-product post-119216 status-publish first instock product_cat-kiem-ke-go product_tag-diet-quy-cuu-nhan product_tag-ha-tru product_tag-kiem-ha-tru product_tag-kiem-kimetsu-no-yaiba product_tag-kiem-tokitou-muichirou product_tag-kimetsu-no-yaiba product_tag-nhat-luan-kiem product_tag-thanh-guom-diet-quy product_tag-tokitou-muichirou has-post-thumbnail shipping-taxable purchasable product-type-simple">
				<div class="product-inner">
					
					<div class="product-image">
		
						<a href="shop/product/detail/${list[4].id}.htm">
							<div class="inner"><img width="250" height="300" src="images/${list[4].productType}/${list[4].imageSource}" class=" wp-post-image" alt="" loading="lazy"></div>		</a>
							<div class="links-on-image">
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added"><button type="button" value="-" class="minus">-</button>
									<input type="number" id="quantity_5f906defaeafe" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
									<button type="button" value="+" class="plus">+</button></div>
									<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Kiếm Gỗ Hà Trụ Đen Tokitou Muichirou 1m - Vỏ ABS” vào giỏ hàng" rel="nofollow">Mua hàng</a>
									<div class="quickview" data-id="119216" title="Xem nhanh" style="background-color: #145252;">Xem nhanh</div>	
							</div>
						</div>
						</div>
					</div>
		
					<div class="product-content">
						<span class="category-list">
							<a href="shop/product/${list[4].productType}.htm" rel="tag">${list[4].productType}
							</a>
						</span>
							<a class="product-loop-title" href="shop/product/detail/${list[4].id}.htm">
								<h3 class="woocommerce-loop-product__title">${list[4].productName}</h3>	
							</a>
					
						
						<span class="price">
							<span class="woocommerce-Price-amount amount">
									<bdi>${list[4].price}<span class="woocommerce-Price-currencySymbol">₫</span>
									</bdi>
							</span>
						</span>
		
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added">
										<button type="button" value="-" class="minus">-</button>
										<input type="number" id="quantity_5f906defaf05c" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
										<button type="button" value="+" class="plus">+</button>
									</div>
								<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Tượng công chúa Shirahoshi-One Piece” vào giỏ hàng" rel="nofollow">Mua hàng</a><div class="quickview" data-id="119216" title="Xem nhanh">Xem nhanh</div>	
							</div>
						</div>
					</div>
				</div>
			</li>
	
			</ul>
	
	</div>
	
	<div class="archive-products-6" >
	
		<ul class="products products-container grid pcols-lg-3 pcols-md-3 pcols-xs-2 pcols-ls-2 pwidth-lg-3 pwidth-md-3 pwidth-xs-2 pwidth-ls-1" data-product_layout="product-wq_onimage">
			
			<li class="product-col product-wq_onimage product type-product post-119216 status-publish first instock product_cat-kiem-ke-go product_tag-diet-quy-cuu-nhan product_tag-ha-tru product_tag-kiem-ha-tru product_tag-kiem-kimetsu-no-yaiba product_tag-kiem-tokitou-muichirou product_tag-kimetsu-no-yaiba product_tag-nhat-luan-kiem product_tag-thanh-guom-diet-quy product_tag-tokitou-muichirou has-post-thumbnail shipping-taxable purchasable product-type-simple">
				<div class="product-inner">
					
					<div class="product-image">
		
						<a href="shop/product/detail/${list[5].id}.htm">
							<div class="inner"><img width="250" height="300" src="images/${list[5].productType}/${list[5].imageSource}" class=" wp-post-image" alt="" loading="lazy"></div>		</a>
							<div class="links-on-image">
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added"><button type="button" value="-" class="minus">-</button>
									<input type="number" id="quantity_5f906defaeafe" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
									<button type="button" value="+" class="plus">+</button></div>
									<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Kiếm Gỗ Hà Trụ Đen Tokitou Muichirou 1m - Vỏ ABS” vào giỏ hàng" rel="nofollow">Mua hàng</a>
									<div class="quickview" data-id="119216" title="Xem nhanh" style="background-color: #145252;">Xem nhanh</div>	
							</div>
						</div>
						</div>
					</div>
		
					<div class="product-content">
						<span class="category-list">
							<a href="shop/product/${list[5].productType}.htm" rel="tag">${list[5].productType}
							</a>
						</span>
							<a class="shop/product/detail/${list[5].id}.htm">
								<h3 class="woocommerce-loop-product__title">${list[5].productName}</h3>	
							</a>
					
						
						<span class="price">
							<span class="woocommerce-Price-amount amount">
									<bdi>${list[5].price}<span class="woocommerce-Price-currencySymbol">₫</span>
									</bdi>
							</span>
						</span>
		
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added">
										<button type="button" value="-" class="minus">-</button>
										<input type="number" id="quantity_5f906defaf05c" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
										<button type="button" value="+" class="plus">+</button>
									</div>
								<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Tượng công chúa Shirahoshi-One Piece” vào giỏ hàng" rel="nofollow">Mua hàng</a><div class="quickview" data-id="119216" title="Xem nhanh">Xem nhanh</div>	
							</div>
						</div>
					</div>
				</div>
			</li>
	
			</ul>
	
	</div>
	
	<div class="archive-products-7" >
	
		<ul class="products products-container grid pcols-lg-3 pcols-md-3 pcols-xs-2 pcols-ls-2 pwidth-lg-3 pwidth-md-3 pwidth-xs-2 pwidth-ls-1" data-product_layout="product-wq_onimage">
			
			<li class="product-col product-wq_onimage product type-product post-119216 status-publish first instock product_cat-kiem-ke-go product_tag-diet-quy-cuu-nhan product_tag-ha-tru product_tag-kiem-ha-tru product_tag-kiem-kimetsu-no-yaiba product_tag-kiem-tokitou-muichirou product_tag-kimetsu-no-yaiba product_tag-nhat-luan-kiem product_tag-thanh-guom-diet-quy product_tag-tokitou-muichirou has-post-thumbnail shipping-taxable purchasable product-type-simple">
				<div class="product-inner">
					
					<div class="product-image">
		
						<a href="shop/product/detail/${list[6].id}.htm">
							<div class="inner"><img width="250" height="300" src="images/${list[6].productType}/${list[6].imageSource}" class=" wp-post-image" alt="" loading="lazy"></div>		</a>
							<div class="links-on-image">
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added"><button type="button" value="-" class="minus">-</button>
									<input type="number" id="quantity_5f906defaeafe" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
									<button type="button" value="+" class="plus">+</button></div>
									<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Kiếm Gỗ Hà Trụ Đen Tokitou Muichirou 1m - Vỏ ABS” vào giỏ hàng" rel="nofollow">Mua hàng</a>
									<div class="quickview" data-id="119216" title="Xem nhanh" style="background-color: #145252;">Xem nhanh</div>	
							</div>
						</div>
						</div>
					</div>
		
					<div class="product-content">
						<span class="category-list">
							<a href="shop/product/${list[6].productType}.htm" rel="tag">${list[6].productType}
							</a>
						</span>
							<a class="product-loop-title" href="shop/product/detail/${list[6].id}.htm">
								<h3 class="woocommerce-loop-product__title">${list[6].productName}</h3>	
							</a>
					
						
						<span class="price">
							<span class="woocommerce-Price-amount amount">
									<bdi>${list[6].price}<span class="woocommerce-Price-currencySymbol">₫</span>
									</bdi>
							</span>
						</span>
		
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added">
										<button type="button" value="-" class="minus">-</button>
										<input type="number" id="quantity_5f906defaf05c" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
										<button type="button" value="+" class="plus">+</button>
									</div>
								<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Tượng công chúa Shirahoshi-One Piece” vào giỏ hàng" rel="nofollow">Mua hàng</a><div class="quickview" data-id="119216" title="Xem nhanh">Xem nhanh</div>	
							</div>
						</div>
					</div>
				</div>
			</li>
	
			</ul>
	
	</div>
	
	<div class="archive-products-8" >
	
		<ul class="products products-container grid pcols-lg-3 pcols-md-3 pcols-xs-2 pcols-ls-2 pwidth-lg-3 pwidth-md-3 pwidth-xs-2 pwidth-ls-1" data-product_layout="product-wq_onimage">
			
			<li class="product-col product-wq_onimage product type-product post-119216 status-publish first instock product_cat-kiem-ke-go product_tag-diet-quy-cuu-nhan product_tag-ha-tru product_tag-kiem-ha-tru product_tag-kiem-kimetsu-no-yaiba product_tag-kiem-tokitou-muichirou product_tag-kimetsu-no-yaiba product_tag-nhat-luan-kiem product_tag-thanh-guom-diet-quy product_tag-tokitou-muichirou has-post-thumbnail shipping-taxable purchasable product-type-simple">
				<div class="product-inner">
					
					<div class="product-image">
		
						<a href="shop/product/detail/${list[7].id}.htm">
							<div class="inner"><img width="250" height="300" src="images/${list[7].productType}/${list[7].imageSource}" class=" wp-post-image" alt="" loading="lazy"></div>		</a>
							<div class="links-on-image">
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added"><button type="button" value="-" class="minus">-</button>
									<input type="number" id="quantity_5f906defaeafe" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
									<button type="button" value="+" class="plus">+</button></div>
									<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Kiếm Gỗ Hà Trụ Đen Tokitou Muichirou 1m - Vỏ ABS” vào giỏ hàng" rel="nofollow">Mua hàng</a>
									<div class="quickview" data-id="119216" title="Xem nhanh" style="background-color: #145252;">Xem nhanh</div>	
							</div>
						</div>
						</div>
					</div>
		
					<div class="product-content">
						<span class="category-list">
							<a href="shop/product/${list[7].productType}.htm" rel="tag">${list[7].productType}
							</a>
						</span>
							<a class="product-loop-title" href="shop/product/detail/${list[7].id}.htm">
								<h3 class="woocommerce-loop-product__title">${list[7].productName}</h3>	
							</a>
					
						
						<span class="price">
							<span class="woocommerce-Price-amount amount">
									<bdi>${list[7].price}<span class="woocommerce-Price-currencySymbol">₫</span>
									</bdi>
							</span>
						</span>
		
						<div class="add-links-wrap">
							<div class="add-links clearfix">
									<div class="quantity buttons_added">
										<button type="button" value="-" class="minus">-</button>
										<input type="number" id="quantity_5f906defaf05c" class="input-text qty text" step="1" min="1" max="10" name="quantity" value="1" title="SL" size="4" placeholder="" inputmode="numeric">
										<button type="button" value="+" class="plus">+</button>
									</div>
								<a href="?add-to-cart=119216" data-quantity="1" class="viewcart-style-2 button product_type_simple add_to_cart_button ajax_add_to_cart" data-product_id="119216" data-product_sku="PK082" aria-label="Thêm “Tượng công chúa Shirahoshi-One Piece” vào giỏ hàng" rel="nofollow">Mua hàng</a><div class="quickview" data-id="119216" title="Xem nhanh">Xem nhanh</div>	
							</div>
						</div>
					</div>
				</div>
			</li>
	
			</ul>
	
	</div>
	

	
</div>

</form:form>
	
	
</div>

	






	</main></div>


</div><!-- end main content -->




<div class="sidebar-overlay"></div>

	
</div>

	
</body>
</html>