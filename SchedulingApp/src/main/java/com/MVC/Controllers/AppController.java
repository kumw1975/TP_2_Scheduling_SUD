package com.MVC.Controllers;



import com.MVC.Model.Employee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/*
 * This controller dispatches requests or messages from the
 * View(presentaion layer) or UI to the domain Model
 * 
 * */
@Controller
public class AppController {

	@RequestMapping("/loginHandler")
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String email = request.getParameter("email");
		String schedule= request.getParameter("schedule");
		String role= request.getParameter("role");
		String availability= request.getParameter("availability");
		
		
		 Employee emp = new Employee();
	        emp.setFirstName(firstName);
	        emp.setLastName(lastName);
	        emp.setEmail(email);
	        emp.setSchedule(schedule);
	        emp.setRole(role);
	        emp.setAvailability(availability);
	        
	        DB_coonectionController db = new DB_coonectionController(emp);
	        db.db_connection();
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/*
	public static void main( String[] args )
    {
        Employee emp = new Employee();
        emp.setFirstName("Black");
        emp.setLastName("Panther");
        emp.setEmail("balckP@gmail.com");
        emp.setSchedule("Sunday, March,2018");
        emp.setRole("Avenger");
        emp.setAvailability("Anytime");
        
        DB_coonectionController db = new DB_coonectionController(emp);
        db.db_connection();
    }
    */
	
}

