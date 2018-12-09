package com.MVC.Controllers;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.hibernate.Criteria;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.MVC.Model.Employee;



@Controller
public class LoginController{
	
	private static final Object Object = new Object();
	private String username;
	private String password;
	private Employee emp;
	private SecurityController sc;
	private ModelAndView mv;
	
	 private DB_coonectionController db;
	    
	 public LoginController() {
	   
		 this.emp= new Employee();
		 this.mv = new ModelAndView();
		 try {
			this.sc=  new SecurityController();
		} catch (Exception e) {
			// Auto-generated catch block
			e.printStackTrace();
		}
	 }
	 
	 
	public LoginController(String username, String password) {
		super();
		this.username = username;
		this.password = password;
		
	}
	
	




	@RequestMapping("/loginHandler")
	public ModelAndView doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		  this.username = request.getParameter("username");
		  this.username = this.username.trim();
		  this.password = sc.encrypt((request.getParameter("password").trim()));
		  
		  validate_user(this.username,this.password);
		  
		 return this.mv;
		
	}//contorller
	
	
	
	
	
	public void validate_user(String username, String password) {
		
		String db_username="";
		String db_password="";
		String loadPage="";
		 
		this.db = new DB_coonectionController();
		
		
		
		String q = "SELECT * FROM Employee WHERE FIRSTNAME"+"="+"'"+username+"'";
		System.out.println("Q********uery :" + q);
		List<Object[]> employees = db.session.createSQLQuery(q).list();

	    
	    	for(Object[] result: employees) {
	    	 
	        
	    		db_username=(String) result[4];
	    		db_password=(String) result[6];
	    	    this.mv.addObject("role",(String) result[8]);
	    	}
	    	
	    	   
	    	if((username.equals(db_username))&&(password.equals(db_password)))
	    	{
	    			
	    		System.out.println("you are a valid user");
	    		loadPage="Profilepage.jsp";
	    		
	    		
				this.mv.setViewName(loadPage);
				this.mv.addObject("user", this.username );
				
				
	    				
	    	}//if
	    		
	    		
	    	else {
	    		
                loadPage="errorPage.jsp";
				this.mv.setViewName(loadPage);
				this.mv.addObject("result", this.username );
	    		
	    		//System.out.println("you are not a valid user");
	    		
	    	}
	    		
	    			
	    		
	    		//System.out.println(username+" "+ db_username +" "+ password+" "+ db_password);
				
	    		
	            
	    }//showTable method
		
		
		
		
		
	
	
	
}//class