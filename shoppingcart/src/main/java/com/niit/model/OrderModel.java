package com.niit.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "ORDER_TABLE")
public class OrderModel implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int orderid;
	
	@ManyToOne
	@JoinColumn(name="username")
	private Register user;
		
	@ManyToOne
	@JoinColumn(name="productId")
	private Product productModel;
	 
	@ManyToOne
	@JoinColumn(name="productName")
	private Product productname;
	
	@Column
	private int quantity=1;

	@Column
	private int total;

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public Register getUser() {
		return user;
	}

	public void setUser(Register user) {
		this.user = user;
	}

	public Product getProductModel() {
		return productModel;
	}

	public void setProductModel(Product productModel) {
		this.productModel = productModel;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Product getProduct() {
		return productname;
	}

	public void setProduct(Product product) {
		this.productname = product;
	}
	
		
}