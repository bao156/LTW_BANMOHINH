package banhang.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="CartDetail")
@IdClass(CartDetail_ID.class)
public class CartDetail {
	
	@Id
	@ManyToOne
	@JoinColumn(name="CartId")
	private Carts cartId;
	
	@Id
	@ManyToOne
	@JoinColumn(name="ProductId")
	private Products productId;
	
	@Column(name="Quantity")
	private Integer quantity;

	

	public CartDetail() {
		super();
	}

	public CartDetail(Carts cartId, Products productId, Integer quantity) {
		super();
		this.cartId = cartId;
		this.productId = productId;
		this.quantity = quantity;
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

	public void setProductId(Products productId) {
		this.productId = productId;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	
}
