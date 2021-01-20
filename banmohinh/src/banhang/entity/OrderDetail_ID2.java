package banhang.entity;

import java.io.Serializable;

import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class OrderDetail_ID2 implements Serializable{
	private Products productId;

	private Orders orderId;

	
	public Products getProductId() {
		return productId;
	}

	public void setProductId(Products productId) {
		this.productId = productId;
	}

	
	public Orders getOrderId() {
		return orderId;
	}

	public void setOrderId(Orders orderId) {
		this.orderId = orderId;
	}

	public OrderDetail_ID2() {
		super();
	}

	public OrderDetail_ID2(Products productId, Orders orderId) {
		super();
		this.productId = productId;
		this.orderId = orderId;
	}

	

	

	
	 
	
	
}
