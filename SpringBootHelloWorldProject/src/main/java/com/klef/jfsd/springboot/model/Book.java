package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="vehicle_book")
public class Book {

	
	
	
	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   @Column(name="vehicle_id")
	   private int id;
	   
	   
	   private String name;
	   
	   @Column(nullable=false,unique = true,length = 30)
	   private String email;
	   
	   private String phone;
	   
	   private String vehiclecolor;
	   
	   private String deliveryaddress;
	   
	   private String quantity;
	   
	   private String paymenttype;
	   
	   
	   
	    @ManyToOne
	    @JoinColumn(name = "user_id")
	    private Customer user;
	   
	   
	   
	   
	   
	   
	   
	   
	   

	public Customer getUser() {
		return user;
	}

	public void setUser(Customer user) {
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getVehiclecolor() {
		return vehiclecolor;
	}

	public void setVehiclecolor(String vehiclecolor) {
		this.vehiclecolor = vehiclecolor;
	}

	public String getDeliveryaddress() {
		return deliveryaddress;
	}

	public void setDeliveryaddress(String deliveryaddress) {
		this.deliveryaddress = deliveryaddress;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getPaymenttype() {
		return paymenttype;
	}

	public void setPaymenttype(String paymenttype) {
		this.paymenttype = paymenttype;
	}

	
	   
	   
}
