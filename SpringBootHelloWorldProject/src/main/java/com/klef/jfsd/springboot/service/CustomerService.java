package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Book;
import com.klef.jfsd.springboot.model.Customer;



public interface CustomerService 
{
	public String addemp(Customer c);
	
	public Customer checkemplogin(String email,String pwd); 

	public List<Customer> viewallcustomers();
	
	public Customer viewempbyid(int eid);
	
	public String book(Book book);
    
    public List<Book> getbookingdetails(int customerId);
    
    public Book viewbookingdetails(int id);

}
