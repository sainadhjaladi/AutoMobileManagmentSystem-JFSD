package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.ContactUs;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Parts;
import com.klef.jfsd.springboot.model.Services;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.ContactUsRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.PartsRepository;
import com.klef.jfsd.springboot.repository.ServicesRepository;


@Service
public class AdminServiceImpl implements AdminService
{
    @Autowired
	private AdminRepository adminRepository;
    
    @Autowired
    private CustomerRepository customerRepository;
    
    @Autowired
    private ContactUsRepository contactUsRepository;
    
    @Autowired
    private ServicesRepository servicesRepository;
	
	@Autowired
	private PartsRepository partsRepository;
	
	
	
	
	

	@Override
	public String deleteemp(int eid) 
	{
		Optional<Customer> obj = customerRepository.findById(eid);
	    
	    String msg = null;
	    
	    if(obj.isPresent())
	    {
	      Customer emp = obj.get();
	      customerRepository.delete(emp);
	      msg = "Employee Deleted Successfully";
	    }
	    else
	    {
	      msg = "Employee Not Found";
	    }
	    
	    return msg;
	}
	
	
	


	@Override
	public Admin checkadminlogin(String auname, String apwd) {
		
		return  adminRepository.checkadminlogin(auname, apwd);
	}



	
	
	
	
	
	

	@Override
	public List<Services> viewallbookedservices() {
		return servicesRepository.findAll();
	}

	
	@Override
	public List<ContactUs> viewallfeedback() {
		return contactUsRepository.findAll();
	}
	
	
	@Override
	public List<Customer> viewallcustomers() {
		return customerRepository.findAll();
	}


	@Override
	public List<Parts> viewallparts() 
	{
		return partsRepository.findAll();
	}
	
	
	
	
	
	
	


	
	
	
	//View individual id of services
	@Override
	public  Services viewbyid(int id) {
       
		Optional<Services> obj;
		
			obj = servicesRepository.findById(id);
		    
	    
	    if(obj.isPresent())
	    {
	    	Services ser = obj.get();
	      return ser;
	    }
	    else
	    {
	      return null;
	    }
	}
	
	
	//View individual id of feedback
	@Override
	public ContactUs viewbyid1(int id)
	{
		Optional<ContactUs> obj1;
		
		obj1=contactUsRepository.findById(id);
		
		if(obj1.isPresent())
		{
			ContactUs con=obj1.get();
			return con;
		}
		else
		{
			return null;
		}
	}


	//View individual customers//
	@Override
	public Customer viewbyid2(int id)
	{
		Optional<Customer> obj2;
		
		obj2=customerRepository.findById(id);
		
		if(obj2.isPresent())
		{
			Customer coso=obj2.get();
			return coso;
		}
		else
		{
			return null;
		}
	}
	
	
	//view individual parts//
	@Override
	public Parts viewbyid3(int id) 
	{
		Optional<Parts> obj3;
		
		obj3=partsRepository.findById(id);
		
		if(obj3.isPresent())
		{
			Parts par=obj3.get();
			return par;
		}
		else
		{
			return null;
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	@Override
	public Customer viewempbyid(int eid) {
       
		Optional<Customer> obj = customerRepository.findById(eid);    
	    
	    if(obj.isPresent())
	    {
	      Customer c = obj.get();
	      return c;
	    }
	    else
	    {
	      return null;
	    }
	}



















}
