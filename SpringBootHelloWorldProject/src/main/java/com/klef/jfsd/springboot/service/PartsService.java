package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Parts;

public interface PartsService 
{
	public String addpart(Parts p);
	
	public List<Parts> viewallparts();
}
