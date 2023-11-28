package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="service_booking")
public class Services {
	
	
	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   @Column(name="emp_id")
	   private int id;
	   
	   
	   
	   private String name;
	   
	   
	   @Column(nullable=false,unique = true,length = 30)
	   private String email;
	   
	   
	   private String vehiclemodel;
	   
	   
	   private String typeofService;
	   
	   private String stable;
	   
	   private String stime;

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

	public String getVehiclemodel() {
		return vehiclemodel;
	}

	public void setVehiclemodel(String vehiclemodel) {
		this.vehiclemodel = vehiclemodel;
	}

	public String getTypeofService() {
		return typeofService;
	}

	public void setTypeofService(String typeofService) {
		this.typeofService = typeofService;
	}

	public String getStable() {
		return stable;
	}

	public void setStable(String stable) {
		this.stable = stable;
	}

	public String getStime() {
		return stime;
	}

	public void setStime(String stime) {
		this.stime = stime;
	}
	   
	   
	   
	   

}
