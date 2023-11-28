package com.klef.jfsd.springboot.controller;


import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.http.MediaType;




import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Book;
import com.klef.jfsd.springboot.model.ContactUs;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Parts;
import com.klef.jfsd.springboot.model.Services;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.BookService;
import com.klef.jfsd.springboot.service.ContactUsService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.EmailService;
import com.klef.jfsd.springboot.service.PartsService;
import com.klef.jfsd.springboot.service.ServiceClass;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{   	
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
    
	@Autowired
	private BookService bookService;
	
	@Autowired
	private ContactUsService contactUsService;
	
	@Autowired
	private ServiceClass serviceClass;
	
	@Autowired
	private PartsService partsService;
	
	@Autowired
	private EmailService emailService;
	@Autowired
	  private HttpSession httpSession;
	
	
    
	@GetMapping("/")
	public String home()
	{
		return "home";
	}
	
	@GetMapping("/aboutus")
	public String aboutus()
	{
		return "aboutus";
	}
	
	
	@GetMapping("/consuc")
	public String consuc()
	{
		return "consuc";
	}
	
	@GetMapping("/contactus")
	public String contactus()
	{
		return "contactus";
	}
	
	@GetMapping("/call")
	public String call()
	{
		return "call";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	@GetMapping("/write")
	public String write() 
	{
		return "write";
	}
	
	
	@GetMapping("/login")
	public String login() 
	{
		return "login";
	}
	  
	
	@GetMapping("/admin")
	public String admin() 
	{
		return "admin";
	}
	
	@GetMapping("/module")
	public String module() 
	{
		return "module";
	}
	
	@GetMapping("/reviews")
	public String reviews() 
	{
		return "reviews";
	}
	
	@GetMapping("/book")
	public String book() 
	{
		return "book";
	}
	
	@GetMapping("/photo1")
	public String photo1() 
	{
		return "photo1";
	}
	
	@GetMapping("/photo2")
	public String photo2() 
	{
		return "photo2";
	}
	
	@GetMapping("/photo3")
	public String photo3() 
	{
		return "photo3";
	}
	
	@GetMapping("/photo4")
	public String photo4() 
	{
		return "photo4";
	}
	
	@GetMapping("/photo5")
	public String photo5() 
	{
		return "photo5";
	}
	
	@GetMapping("/photo6")
	public String photo6() 
	{
		return "photo6";
	}
	
	@GetMapping("/photo7")
	public String photo7() 
	{
		return "photo7";
	}
	
	@GetMapping("/photo8")
	public String photo8() 
	{
		return "photo8";
	}
	
	@GetMapping("/photo9")
	public String photo9() 
	{
		return "photo9";
	}
	
	
	@GetMapping("/services")
	public String services()
	{
		return "services";
	}
	
	@GetMapping("/addcard")
	public String addcard()
	{
		return "addcard";
	}
	
	
	@GetMapping("/Parts")
	public String Parts()
	{
		return "Parts";
	}
	
	
	@GetMapping("/secondhome")
	public String secondhome()
	{
		return "secondhome";
	}
	
    
	
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) 
	{
		 ModelAndView mv = new ModelAndView();
	
		String auname = request.getParameter("auname");
	    String apwd = request.getParameter("apwd");
	     
	    Admin admin = adminService.checkadminlogin(auname, apwd);
	    
	    if(admin!=null)
	    {
	    	
	    	mv.setViewName("addcard");
	      
	    }
	    else
	    {
	      mv.setViewName("error");
	    }
		
	    return mv;
	}
	
	
	//InsertCustomer
	@PostMapping("insertemp")
	public ModelAndView insertaction(HttpServletRequest request,@RequestParam("profilepic") MultipartFile file) throws IOException, SerialException, SQLException
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		try 
		{
			String name = request.getParameter("name");
		    String email = request.getParameter("email");
		    String pwd = request.getParameter("pass");
		    String repass = request.getParameter("repass");
		    String contact = request.getParameter("contact");
		    
		    byte[] bytes = file.getBytes();
	        Blob profilepic = new javax.sql.rowset.serial.SerialBlob(bytes);
		    
		    
		    
		    
			
		    
		      Customer c = new Customer();
		      
		     c.setName(name);
		     c.setEmail(email);
		     c.setNumber(contact);
		     c.setPass(pwd);
		     c.setConpass(repass);
		     c.setProfilepic(profilepic);
		     
		   //ADD HERE FOR THE TWO LINES TO EMAIL 
		    
		     
		    
		    
		      msg = customerService.addemp(c);
		      mv.setViewName("login");
			  mv.addObject("message",msg);
		        
		} 
		catch (Exception e) 
		{
			msg = e.getMessage();
			mv.setViewName("error");
			mv.addObject("message",msg);
		}
	   
		return mv;
	    
	}
	
	
	@PostMapping("checkemplogin")
	public ModelAndView checkemplogin(HttpServletRequest request) 
	{
		 ModelAndView mv = new ModelAndView();
	
		 String email = request.getParameter("email");
	     String pwd = request.getParameter("pass");
	     
	    Customer emp =  customerService.checkemplogin(email, pwd);
	    
	    if(emp!=null)
	    {
	    	//session
	    	
	    	HttpSession session = request.getSession();
	    	
	    	session.setAttribute("cid", emp.getId()); // eid is a session variable
	    	session.setAttribute("cname", emp.getName()); // ename is a session variable
	    	
	    	//session
	    	
	    	mv.setViewName("secondhome");
	      
	    }
	    else
	    {
	      mv.setViewName("login");
	      mv.addObject("message","Login Failed");
	    }
		
	    return mv;
	}
	
	
	
	
	
	//INSERT CUSTOMERS VEHICLE DETAILS.
	@PostMapping("insertvehicle")
	public ModelAndView insertaction1(HttpServletRequest request) 
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		try 
		{
			String name = request.getParameter("name");
		    String email = request.getParameter("email");
		    String phone = request.getParameter("phone");
		    String vehiclecolor = request.getParameter("vehicle_color");
		    String deliveryaddress = request.getParameter("delivery_address");
		    String Quantity=request.getParameter("quantity");
		    String Paymenttype=request.getParameter("payment_type");		
			
		    
		      Book b = new Book();
		      
		     b.setName(name);
		     b.setEmail(email);
		     b.setPhone(phone);
		     b.setVehiclecolor(vehiclecolor);
		     b.setDeliveryaddress(deliveryaddress);
		     b.setQuantity(Quantity);
		     b.setPaymenttype(Paymenttype);
		    
		      
		    
		      msg = bookService.addcus(b);
		      mv.setViewName("boosuc");
			  mv.addObject("message",msg);
		        
		} 
		catch (Exception e) 
		{
			msg = e.getMessage();
			mv.setViewName("home");
			mv.addObject("message",msg);
		}
	   
		return mv;
	    
	}
	
	@GetMapping("cart")
    public ModelAndView viewbooking() 
  {
        ModelAndView mv = new ModelAndView("cart");

        Integer customerId = (Integer) httpSession.getAttribute("cid");

        if (customerId != null) {
            List<Book> book = customerService.getbookingdetails(customerId);
            mv.addObject("book", book);
        }
        else 
        {
            
        }

        return mv;
    }
	
	
	
	
	//Insert the Parts details
	@PostMapping("insertparts")
	public ModelAndView insertactions2(HttpServletRequest request)
	{
		String msg=null;
		ModelAndView mv = new ModelAndView();
		try 
		{
			String name=request.getParameter("cname");
			String modveh=request.getParameter("mname");
			String parnam=request.getParameter("pname");
			String parnum=request.getParameter("partnumber");
			String paymet=request.getParameter("pay-type");
			String serreq=request.getParameter("service-type");
			String ship=request.getParameter("ship-ad");
			
			Parts po=new Parts();
			
			po.setName(name);
			po.setVehmod(modveh);
			po.setPname(parnam);
			po.setNp(parnum);
			po.setPm(paymet);
			po.setSr(serreq);
			po.setAddress(ship);
			
			
			msg = partsService.addpart(po);
			mv.setViewName("Partsorder");
			mv.addObject("message",msg);
			
			
		}
		catch (Exception e)
		{
			msg = e.getMessage();
			mv.setViewName("Parts");
			mv.addObject("message",msg);
		}
		return mv;
		
		
	}
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	//INSERT CONTACT US DETAILS 
	
	@PostMapping("contactdetails")
	public ModelAndView insertaction2(HttpServletRequest request) 
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		try 
		{
			String Firstname = request.getParameter("names");
		    String Lastname = request.getParameter("lnames");
		    String Email = request.getParameter("emails");
		    String mobile = request.getParameter("mobiles");
		    String message = request.getParameter("message");
		
			
		    
		      ContactUs c = new ContactUs();
		      
		     c.setFirstname(Firstname);
		     c.setLastname(Lastname);
		     c.setEmail(Email);
		     c.setMobile(mobile);
		     c.setMessage(message);
		     
		    
		      
		    
		      msg = contactUsService.addcon(c);
		      mv.setViewName("consuc");
			  mv.addObject("message",msg);
		        
		} 
		catch (Exception e) 
		{
			msg = e.getMessage();
			mv.setViewName("contactus");
			mv.addObject("message",msg);
		}
	   
		return mv;
	    
	}
	
	
	
	
	// Services
	
	
	@PostMapping("serbok")
	public ModelAndView insertaction3(HttpServletRequest request) 
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		
		try 
		{
			String cname = request.getParameter("cname");
		    String email = request.getParameter("email");
		    String vechicalmodel = request.getParameter("vechicalmodel");
		    String service = request.getParameter("service");
		    String predate = request.getParameter("pdate");
		    String pretime = request.getParameter("ptime");
			
		    
		   Services se = new Services();
		      
		   se.setEmail(email);
		   se.setName(cname);
		   se.setStable(predate);
		   se.setStime(pretime);
		   se.setTypeofService(service);
		   se.setVehiclemodel(vechicalmodel);
		     
		    
		      
		    
		      msg = serviceClass.addser(se);
		      mv.setViewName("sersuc");
			  
		        
		} 
		catch (Exception e) 
		{
			msg = e.getMessage();
			mv.setViewName("services");
			
		}
	   
		return mv;
	    
	}
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//view all users//
	@GetMapping("viewallcustomers")
	public ModelAndView viewcus()
	{
		List<Customer> cuslist1 = customerService.viewallcustomers();
		ModelAndView mv2 = new  ModelAndView();
		mv2.setViewName("viewallcustomers");
		mv2.addObject("cuscus",cuslist1);
		return mv2;
	}
	
	
	
	//view all parts//
	@GetMapping("viewallparts")
	public ModelAndView viewparts()
	{
		List<Parts> parlist = partsService.viewallparts();
		ModelAndView mv3=new ModelAndView();
		mv3.setViewName("viewallparts");
		mv3.addObject("vpars",parlist);
		return mv3;
	}
	
	
	
	
	
	

	    //view all feedback//
		@GetMapping("viewallfeedback")
		public ModelAndView viewcon()
		{
			List<ContactUs> cuslist = contactUsService.viewallfeedback();
			ModelAndView mv1 = new  ModelAndView();
			mv1.setViewName("viewallfeedback");
			mv1.addObject("cust",cuslist);
			return mv1;
			
		}
		
	
	
	
		
		//View all services Booked//
		@GetMapping("viewallbookedservices")
		public ModelAndView viewser()
		{
			List<Services>serlist=serviceClass.viewallbookedservices();
			ModelAndView mv= new ModelAndView();
			mv.setViewName("viewallbookedservices");
			mv.addObject("bos",serlist);
			
			return mv;
		}	
		

	
	//View Individual Customers Registered
	@GetMapping("view1")
	public ModelAndView viewincus(@RequestParam("id") int id)
	{
		Customer cosmos = adminService.viewbyid2(id);
		ModelAndView mv2=new ModelAndView();
		mv2.setViewName("viewindcustomers");
		mv2.addObject("cass",cosmos);
		return mv2;
	}
	
	

	//View individual Feedback
	@GetMapping("views")
	public ModelAndView viewifb(@RequestParam("id") int id)
	{
		ContactUs cmp=adminService.viewbyid1(id);
		ModelAndView mv1 = new ModelAndView();
		mv1.setViewName("viewindfeed");
		mv1.addObject("cok",cmp);
		return mv1;
	}
	
	
	

	//View individual services
	@GetMapping("view")
	  public ModelAndView viewempdemo(@RequestParam("id") int id)
	  {
	    Services emp = adminService.viewbyid(id);
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("vindbook");
	    mv.addObject("bok", emp);
	    return mv;
	  }
	
	
	//view individual Parts
	@GetMapping("visit")
	public ModelAndView viewparts(@RequestParam("id") int id)
	{
		Parts pp= adminService.viewbyid3(id);
		ModelAndView mv3=new ModelAndView();
		mv3.setViewName("viewindparts");
		mv3.addObject("pok",pp);
		return mv3;
	}
	
	
	
	
	
	@GetMapping("displayprofilepic")
	  public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	  {
	    Customer product =  customerService.viewempbyid(id);
	    byte [] imageBytes = null;
	    imageBytes = product.getProfilepic().getBytes(1,(int) product.getProfilepic().length());
	    
	    return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);	
	  }
	
	
	
	
	
	
	
	
	
	
	
	
	
	    
}
