package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



@Entity
@Table(name="Parts_Ordered")
public class Parts {
	
	@Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   @Column(name="vehicle_id")
	   private int id;
	
		
		@Column(name = "Customer_name")
		private String name;
		
		@Column(name = "Vehicle_model")
		private String vehmod;
		
		@Column(name = "Part_name")
		private String pname;
		
		@Column(name = "Number_of_Parts")
		private String np;
		
		@Column(name = "Payment_method")
		private String pm;
		
		@Column(name = "Services_Required")
		private String sr;
		
		@Column(name = "Shipping_Adress")
		private String address;
		
		
		
		
		
		//Getters and Setters
		

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

		public String getVehmod() {
			return vehmod;
		}

		public void setVehmod(String vehmod) {
			this.vehmod = vehmod;
		}

		public String getPname() {
			return pname;
		}

		public void setPname(String pname) {
			this.pname = pname;
		}

		public String getNp() {
			return np;
		}

		public void setNp(String np) {
			this.np = np;
		}

		public String getPm() {
			return pm;
		}

		public void setPm(String pm) {
			this.pm = pm;
		}

		public String getSr() {
			return sr;
		}

		public void setSr(String sr) {
			this.sr = sr;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}
		
		
		
		
		
		

}
