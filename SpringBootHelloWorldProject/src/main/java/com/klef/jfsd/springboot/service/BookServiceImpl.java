package com.klef.jfsd.springboot.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Book;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.BookRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;

import jakarta.servlet.http.HttpSession;


@Service
public class BookServiceImpl implements BookService
{
	@Autowired
	private BookRepository bookrepository;
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private HttpSession httpSession;
	
	


	@Override
	  public String addcus(Book b) 
	  {
	    Integer customerId = (Integer) httpSession.getAttribute("cid");
	      if (customerId != null) {
	          
	          Optional<Customer> customerOpt = customerRepository.findById(customerId);
	          if (customerOpt.isPresent()) {
	              Customer customer = customerOpt.get();
	              
	              b.setUser(customer);
	              
	              bookrepository.save(b);
	              
	              return "Vehicle added Successfully";
	          }
	      }
	      return "Booking Failed because You are not logged in Please login and try again";
	  }
	
	@Override
	  public Book viewbookingsbyid(int eid) 
	  {
	    
	    Optional<Book> obj = bookrepository.findById(eid);    
	      
	      if(obj.isPresent())
	      {
	        Book us = obj.get();
	        return us;
	      }
	      else
	      {
	        return null;
	      }
	  }
	  
	  @Override
	    public List<Book> getbookingDetails(int userId) 
	    {
	      Optional<Customer> customerOpt = customerRepository.findById(userId);

	          if (customerOpt.isPresent()) 
	          {
	              Customer user = customerOpt.get();
	              return user.getBook();
	          }

	          return new ArrayList<>();
	    }
}
