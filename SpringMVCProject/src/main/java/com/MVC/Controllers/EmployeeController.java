package com.MVC.Controllers;



import com.MVC.Model.Employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.hibernate.Criteria;
import org.hibernate.query.Query;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
 * This controller dispatches requests or messages from the
 * View(presentaion layer) or UI to the domain Model
 * 
 * */
@Controller
public class EmployeeController {
	
	
    private String firstName;
    private String lastName;
    private String email;
    private String phone_number;
    private String role;
    private String address;
    private Employee emp;
    private String employee_id;
    private String password;
    
    private DB_coonectionController db;
    
    public EmployeeController() {
    	this.emp= new Employee();
    }
    
    public EmployeeController(String firstName, String lastName, String email, String phone_number, String role, String address, String employee_ID, String password) 
    {
 	   super();
 	   
 	   this.firstName = firstName;
 	   this.lastName = lastName;
 	   this.email = email;
 	   this.phone_number = phone_number;
 	   this.role = role;
 	   this.address = address;
 	   this.employee_id= employee_ID;
 	   this.password=password;
		 	   
   }    
    
	@RequestMapping("/employeeHandler")
	public ModelAndView doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception 
	{
		SecurityController td	= new SecurityController();
	    String main_message 	= "";
	    String sub_message  	= "";
	    ModelAndView page 		= new ModelAndView();	
	    
		response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		this.firstName = request.getParameter("firstname");
		this.lastName = request.getParameter("lastname");
		this.email = request.getParameter("email");
		this.phone_number= request.getParameter("phone_number");
		this.role= request.getParameter("role");
		this.address= request.getParameter("address");
		this.password= td.encrypt((request.getParameter("password")));

		
		if (this.firstName.trim().equalsIgnoreCase("")
			|| this.firstName.trim().equalsIgnoreCase("")
			|| this.lastName.trim().equalsIgnoreCase("")
			|| this.email.trim().equalsIgnoreCase("")
			|| this.phone_number.trim().equalsIgnoreCase("")
			|| this.address.trim().equalsIgnoreCase("")
			|| this.role.trim().equalsIgnoreCase("")) 
		{
		    main_message = "There was an error signing up the user: Missing infomation";
		    sub_message  = "Please try signing up again";			
			page.addObject("main_message", main_message);
			page.addObject("sub_message", sub_message);			 
		}
		else{
			this.firstName = request.getParameter("firstname");
			this.lastName = request.getParameter("lastname");
			this.email = request.getParameter("email");
			this.phone_number= request.getParameter("phone_number");
			this.role= request.getParameter("role");
			this.address= request.getParameter("address");
			this.password= td.encrypt((request.getParameter("password")));	
			
		    this.emp.setFirstName(this.firstName);
		    this.emp.setLastName(this.lastName);
		    this.emp.setEmail(this.email);
		    this.emp.setPhone_number(this.phone_number);
		    this.emp.setRole(this.role);
		    this.emp.setAddress(this.address);
		    this.emp.setEmployee_ID(this.lastName.substring(0, 3).toUpperCase()+this.phone_number.substring(5));
		    this.emp.setPassword(this.password);	
		    
		    showTable();		    
		    
		    main_message = "New User has been entered into the system.";
		    sub_message  = "Thanks for signing up.";
			page.addObject("main_message", main_message);
			page.addObject("sub_message", sub_message);		    
		}		 
	    page.setViewName("thankyou.jsp");
		return page;	    
	}
	
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception 
	{
	    ModelAndView page = new ModelAndView();
	    page.setViewName("LoginPage.jsp");
		return page;	    
	}
	
	@RequestMapping("/signUp")
	public ModelAndView signUp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception 
	{
	    ModelAndView page = new ModelAndView();
	    page.setViewName("Employee.jsp");
		return page;	    
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception 
	{
	    String main_message = "Thanks for using our system.";
	    String sub_message  = "Come back again";

	    ModelAndView page = new ModelAndView();
		page.addObject("main_message", main_message);
		page.addObject("sub_message", sub_message);
		
	    page.setViewName("thankyou.jsp");
		return page;	    
	}
	
	@RequestMapping("/profile")
	public ModelAndView profile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception 
	{
	    ModelAndView page = new ModelAndView();
	    page.setViewName("Profilepage.jsp");
		return page;	    
	}
	
	
	
	
	
    public void showTable() {    	
    this.db = new DB_coonectionController(this.emp);
	String hql = "FROM Employee";
    
    Criteria criteria = db.session.createCriteria(Employee.class);
    
    List<Employee> list = criteria.list();
    
    	for(Employee result: list) {
    	 
        
    		System.out.println( result.getFirstName()+ " " + result.getLastName() + " " + result.getEmail()+ " " + result.getPhone_number()+ " " + result.getRole()+ " " + result.getAddress()+ " " + result.getEmployee_ID());
    
        }
    
    }//showTable method
	
	
	
	
	

	
}//class

