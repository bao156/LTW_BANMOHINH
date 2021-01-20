package banhang.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="Orders")
public class Orders {
	@Id
	@GeneratedValue
	@Column(name="Id")
	private Integer id;
	
	@Column(name="Total")
	private Float total;
	
	@Column(name="CreatedAtDate")
	@DateTimeFormat(pattern = "yyyy-mm-dd")  
	private String createdAtDate;
	
	@ManyToOne
	@JoinColumn(name="UserId")
	private Users user;
	
	public Orders() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Float getTotal() {
		return total;
	}

	public void setTotal(Float total) {
		this.total = total;
	}

	public String getCreatedAtDate() {
		return createdAtDate;
	}

	public void setCreatedAtDate(String createdAtDate) {
		this.createdAtDate = createdAtDate;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	

}
