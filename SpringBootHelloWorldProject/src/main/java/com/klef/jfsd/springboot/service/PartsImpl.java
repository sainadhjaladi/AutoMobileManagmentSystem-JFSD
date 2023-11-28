package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Parts;
import com.klef.jfsd.springboot.repository.PartsRepository;

@Service
public class PartsImpl implements PartsService{
	
	@Autowired
	private PartsRepository partsRepository;
	
	
	@Override
	public String addpart(Parts p)
	{
		partsRepository.save(p);
		return "Added Successfully";
	}


	@Override
	public List<Parts> viewallparts() {
		return partsRepository.findAll();
	}

}
