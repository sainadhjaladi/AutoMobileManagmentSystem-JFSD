package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Services;

public interface ServiceClass {
	
	public String addser(Services s);
	public List<Services> viewallbookedservices();

}
