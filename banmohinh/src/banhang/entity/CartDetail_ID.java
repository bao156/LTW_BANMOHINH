package banhang.entity;

import java.io.Serializable;

public class CartDetail_ID implements Serializable
{
	private Carts cartId;
	private Products productId;
	public CartDetail_ID() {
		super();
	}
	

	public Carts getCartId() {
		return cartId;
	}


	public void setCartId(Carts cartId) {
		this.cartId = cartId;
	}


	public Products getProductId() {
		return productId;
	}

	public void setProductsId(Products productId) {
		this.productId = productId;
	}
	
}
