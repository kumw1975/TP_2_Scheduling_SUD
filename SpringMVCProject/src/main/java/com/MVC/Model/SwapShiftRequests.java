
package com.MVC.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class SwapShiftRequests {
	
	@Id
	@Column(name="ID")
	@GeneratedValue
	private int id; //this will be a generated value
	
	@Column(name="DATE")
	private String date;
	
	@Column(name="START_TIME")
	private String start_time;
	
	@Column(name="END_TIME")
	private String end_time;
	
	@Column(name="EMPLOYEE_NAME")
	private String employee_name;
	
	@Column(name="LOCATION")
	private String location;
	

    
	public SwapShiftRequests() {
		super();
	}


	
	public SwapShiftRequests(int id, String start_time, String end_time, String employee_name, String location, String date) {
		super();
		this.id = id;
		this.start_time = start_time;
		this.end_time = end_time;
		this.date=date;
		this.employee_name = employee_name;
		this.location=location;
		
		
	}



	public int getId() {
		return id;
	}

	

	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	public String getStart_time() {
		return start_time;
	}



	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}



	public String getEnd_time() {
		return end_time;
	}



	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}



	public String getEmployee_name() {
		return employee_name;
	}



	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}



	public String getLocation() {
		return location;
	}



	public void setLocation(String location) {
		this.location = location;
	}



	@Override
	public String toString() {
		return "SwapShiftRequests [id=" + id + ", date=" + date + ", start_time=" + start_time + ", end_time="
				+ end_time + ", employee_name=" + employee_name + ", location=" + location + "]";
	}



	


	



	



	
    
	
}
