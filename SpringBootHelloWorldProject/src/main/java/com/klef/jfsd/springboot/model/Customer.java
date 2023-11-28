package com.klef.jfsd.springboot.model;

import java.sql.Blob;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;


@Entity
@Table(name = "customer_table")
public class Customer 
{
	 
	
	
	


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	public String getConpass() {
		return conpass;
	}


	public void setConpass(String conpass) {
		this.conpass = conpass;
	}


	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   @Column(name="emp_id")
	   private int id;
	   
	   private String name;
	   
	   @Column(nullable=false,unique = true,length = 30)
	    private String email;
		
		@Column(name = "mobile")
		private String number;
		
		@Column(name = "pwd")
		private String pass;
		
		
		@Column(name = "cpass")
		private String conpass;
		
		
		@Column(name = "image")
		private Blob profilepic;
		
		
		
		@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	    private List<Book> book;
		
	   
		
		  public List<Book> getBook() {
			return book;
		}


		public void setBook(List<Book> book) {
			this.book = book;
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


			public String getNumber() {
				return number;
			}


			public void setNumber(String number) {
				this.number = number;
			}


			public Blob getProfilepic() {
				return profilepic;
			}


			public void setProfilepic(Blob profilepic) {
				this.profilepic = profilepic;
			}
			
			
			
	   

}
