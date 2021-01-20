package banhang.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="Cart")
public class Carts {

	@Id
	@GeneratedValue
	@Column(name="Id")
	private Integer id;
	
	@ManyToOne
	@JoinColumn(name="UserID")
	private Users user;

	
	public Carts() {
		super();
	}

	public Carts(Integer id, Users user) {
		super();
		this.id = id;
		this.user = user;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	
}
