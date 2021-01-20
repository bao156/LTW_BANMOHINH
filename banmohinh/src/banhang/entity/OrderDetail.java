package banhang.entity;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Order_Items")
@IdClass(OrderDetail_ID2.class)
public class OrderDetail {
	@Id
	@ManyToOne
	@JoinColumn(name="OrderId")
	private Orders orderId;
	
	@Id
	@ManyToOne
	@JoinColumn(name="ProductId")
	private Products productId;
	
	
	
	@Column(name="Quantity")
	private Integer quantity;



	public Orders getOrderId() {
		return orderId;
	}



	public void setOrderId(Orders orderId) {
		this.orderId = orderId;
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



	public OrderDetail() {
		super();
	}



	public OrderDetail(Orders orderId, Products productId, Integer quantity) {
		super();
		this.orderId = orderId;
		this.productId = productId;
		this.quantity = quantity;
	}

	
	


	
}
