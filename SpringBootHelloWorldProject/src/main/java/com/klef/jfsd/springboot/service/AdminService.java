package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.ContactUs;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Parts;
import com.klef.jfsd.springboot.model.Services;


public interface AdminService 
{
	
	public List<Services> viewallbookedservices();
	public List<ContactUs> viewallfeedback();
	public List<Customer> viewallcustomers();
	public List<Parts> viewallparts();
	public String deleteemp(int eid);
	public Customer viewempbyid(int eid);
	public Admin checkadminlogin(String auname, String apwd);
	public Services viewbyid(int id);
	public ContactUs viewbyid1(int id);
	public Customer viewbyid2(int id);
	public Parts viewbyid3(int id);
	
	
	
	
}
