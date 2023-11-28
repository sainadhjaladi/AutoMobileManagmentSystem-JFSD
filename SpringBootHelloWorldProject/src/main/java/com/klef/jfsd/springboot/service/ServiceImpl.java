package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Services;
import com.klef.jfsd.springboot.repository.ServicesRepository;


@Service
public class ServiceImpl implements ServiceClass{
	
	@Autowired
	private ServicesRepository servicesRepository;

	@Override
	public String addser(Services s) {
		
		servicesRepository.save(s);
		
		return"Added Sucessfully";
	}

	@Override
	public List<Services> viewallbookedservices()
	{
		return servicesRepository.findAll();
	}
	
	
	

}
