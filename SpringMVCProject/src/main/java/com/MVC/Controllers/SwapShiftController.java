package com.MVC.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.MVC.Model.SwapShiftRequests;

@Controller
public class SwapShiftController {
	
	private DB_coonectionController db;
	private String date;
	private String start_time;
	private String end_time;
	private String location;
	private String employee_name;
	private SwapShiftRequests sq;
	
	
	
	public SwapShiftController() {
		super();
		this.sq= new SwapShiftRequests();
		
	}
	
	
	
	
	
	public SwapShiftController(String date, String location, String employee_name) {
		super();
		this.date = date;
		this.location = location;
		this.employee_name = employee_name;
	}






	@RequestMapping("/SwapHandler")
	public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, Exception 
	{
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		this.date= request.getParameter("date");
		this.start_time= request.getParameter("start_time");
		this.employee_name= request.getParameter("user");
		this.end_time=request.getParameter("end_time");
		this.location=request.getParameter("location_2");
		
		this.sq.setDate(this.date);
		this.sq.setEmployee_name(this.employee_name);
		this.sq.setStart_time(this.start_time);
		this.sq.setEnd_time(this.end_time);
		this.sq.setLocation(this.location);
		
		this.db= new DB_coonectionController(this.sq);
		
	    System.out.println(this.date);
	    System.out.println(this.start_time);
	    System.out.println(this.end_time);
	    System.out.println(this.employee_name);
	    System.out.println(this.location);
		
	    
	}
	
	
	
	
	
	
	
}
