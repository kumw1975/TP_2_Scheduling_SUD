package com.MVC.Model;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Shift {
	
	

	@Id
	@Column(name="ID")
	@GeneratedValue
	private int id; //this will be a generated value
	
	@Column(name="SHIFT_ID")
	private String shift_id;
	
	@Column(name="DATE")
	private String date;
	
	@Column(name="START_TIME")
	private String start_time;
	
	@Column(name="END_TIME")
	private String end_time;
	
	@Column(name="LOCATION")
	private String location;
	



	public Shift() {
		
	}

	public Shift(int id, String shift_id, String date, String start_time, String end_time,  String location) {
		super();
		this.id = id;
		this.date = date;
		this.start_time = start_time;
		this.end_time = end_time;
		this.shift_id = shift_id;
		this.location= location;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	
	
	public String getShift_id() {
		return shift_id;
	}

	public void setShift_id(int maximum, int minimum) {
		
				int rand =((int) (Math.random()*(maximum - minimum))) + minimum;
				this.shift_id = this.location.substring(0, 3).toUpperCase()+String.valueOf(rand);
	}

	@Override
	public String toString() {
		return "Shift [id=" + id + ", shift_id=" + shift_id + ", date=" + date + ", start_time=" + start_time
				+ ", end_time=" + end_time + ", location=" + location + "]";
	}

	
	
	
	
	
	
	
	
	

}
