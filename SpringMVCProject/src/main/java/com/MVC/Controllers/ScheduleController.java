package com.MVC.Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.MVC.Model.Schedule;
import com.MVC.Model.Shift;


@Controller
public class ScheduleController {

	
	private String shift_id;
	private String date;
	private String employee_id;
	private String employee_name;
	private String start_time;
	private String end_time;
	private String location;
	private Schedule shd;
	private DB_coonectionController db;
	
	
	
	public ScheduleController() {
		super();
		this.shd = new Schedule();
		
	}

	public ScheduleController(String shift_id, String date, String employee_id, String employee_name, String start_time, String end_time, String location) {
		super();
		this.shift_id = shift_id;
		this.date =date;
		this.employee_id = employee_id;
		this.employee_name = employee_name;
		this.start_time=start_time;
		this.end_time= end_time;
		this.location= location;
	}
	
	@RequestMapping("/scheduleHandler")
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		this.shift_id=request.getParameter("shift_id");
		this.employee_id=request.getParameter("employee_id");
		this.employee_name=request.getParameter("employee_name");
		getshiftTime(this.shift_id);
		
		this.shd.setDate(this.date);
		this.shd.setEmployee_id(this.employee_id);
		this.shd.setEmployee_name(this.employee_name);
		this.shd.setStart_time(this.start_time);
		this.shd.setEnd_time(this.end_time);
		this.shd.setLocation(this.location);
		
		
		showTable();
		
	}
	
	
	
	public void showTable() {
    	
	    this.db = new DB_coonectionController(this.shd);
		String hql = "FROM Schedule";
	    
	    Criteria criteria = db.session.createCriteria(Schedule.class);
	    
	    List<Schedule> list = criteria.list();
	    
	    	for(Schedule result: list) {
	    	 
	        
	    		System.out.println( result.getDate()+ " " + result.getEmployee_id() + " " + result.getEmployee_name());
	    
	        }
	}
	
	
	public void  getshiftTime(String shift_id) {
		
		
		this.db = new DB_coonectionController(this.shd);

		String hql = "FROM Shift where SHIFT_ID"+ "="+shift_id;
	    
	    Criteria criteria = db.session.createCriteria(Shift.class);
	    
	    List<Shift> list = criteria.list();
	    
	    	for(Shift result: list) {
	    	 
	            this.start_time=result.getStart_time().toString();
	    		this.end_time = result.getEnd_time().toString();
	    		this.date= result.getDate();
	    		this.location=result.getLocation();
	    
	        }
		
		
		
	}
	
}
