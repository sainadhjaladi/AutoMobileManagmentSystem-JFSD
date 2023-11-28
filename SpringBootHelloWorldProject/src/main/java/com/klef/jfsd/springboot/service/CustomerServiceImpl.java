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
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
    private CustomerRepository customerRepository;
	@Autowired
	private BookRepository bookRepository;
	@Autowired
	private HttpSession httpSession;

	@Override
	public String addemp(Customer c) 
	{
		customerRepository.save(c);
		
		return "Added successfully";
	}

	@Override
	public Customer checkemplogin(String email, String pwd) {
		
		return customerRepository.checkemplogin(email, pwd);
	}

	@Override
	public List<Customer> viewallcustomers() 
	{
		return customerRepository.findAll();
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
	
	
	
	@Override
    public String book(Book book) 
    {
      Integer customerId = (Integer) httpSession.getAttribute("cid");
        if (customerId != null) {
            
            Optional<Customer> customerOpt = customerRepository.findById(customerId);
            if (customerOpt.isPresent()) {
            	Customer customer = customerOpt.get();
                
                book.setUser(customer);
                
                bookRepository.save(book);
                
                return "Slot booked Successfully";
            }
        }
        return "Booking Failed because You are not logged in Please login and try again";
    }


    @Override
    public List<Book> getbookingdetails(int customerId) 
    {
      Optional<Customer> customerOpt = customerRepository.findById(customerId);

          if (customerOpt.isPresent()) 
          {
              Customer customer = customerOpt.get();
              return customer.getBook();
          }

          return new ArrayList<>();
    }


    @Override
    public Book viewbookingdetails(int id) {
      
      return bookRepository.findById(id).get();
    }

	

	

}
