package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.ContactUs;

public interface ContactUsService 
{
	public String addcon(ContactUs c);
	public List<ContactUs> viewallfeedback();
}
