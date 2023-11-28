package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.ContactUs;
import com.klef.jfsd.springboot.repository.ContactUsRepository;


@Service
public class ContactUsImpl implements ContactUsService{
	
	
	
	@Autowired
	private ContactUsRepository contactUsRepository;

	@Override
	public String addcon(ContactUs c) {
		// TODO Auto-generated method stub
		contactUsRepository.save(c);
		return "Added sucessfully";
	}
	
	@Override
	public List<ContactUs> viewallfeedback() 
	{
		
		return contactUsRepository.findAll();
	}
	
	
	

}
