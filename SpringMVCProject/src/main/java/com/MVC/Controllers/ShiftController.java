package com.MVC.Controllers;

import com.MVC.Model.Shift;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShiftController {
	
	private String work_date;
	private String start_Time;
	private String end_Time;
	private String shift_id;
	private String location;
	private Shift sh;
	private DB_coonectionController db;
	
	
	
	public ShiftController() {
		this.sh = new Shift();
	}

	public ShiftController(String date, String start_time, String end_time, String shift_id, String location) {
		super();
		this.work_date = date;
		this.start_Time = start_time;
		this.end_Time = end_time;
		this.shift_id = shift_id;
		this.location= location;
		
		
	}
	
	@RequestMapping("/shiftHandler")
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		this.work_date=request.getParameter("date");
		this.start_Time=request.getParameter("start_time");
		this.end_Time=request.getParameter("end_time");
		this.location = request.getParameter("location");
		
		this.sh.setDate(this.work_date);
		this.sh.setStart_time(this.start_Time);
		this.sh.setEnd_time(this.end_Time);
		this.sh.setLocation(this.location);
		this.sh.setShift_id(100,1);
		showTable();
		
	}
	
	 public void showTable() {
	    	
		    this.db = new DB_coonectionController(this.sh);
			String hql = "FROM Shift";
		    
		    Criteria criteria = db.session.createCriteria(Shift.class);
		    
		    List<Shift> list = criteria.list();
		    
		    	for(Shift result: list) {
		    	 
		        
		    		System.out.println( result.getDate()+ " " + result.getStart_time() + " " + result.getEnd_time()+ " " + result.getShift_id()+ " " + result.getLocation());
		    
		        }
		    
		    }//showTable method
			
	
	

}
