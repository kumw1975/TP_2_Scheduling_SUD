package com.MVC.Model;

import javax.annotation.Generated;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/*
 * This class represents an employee object
 */
@Entity
public class Employee {
	
	@Id
	@Column(name="ID")
	@GeneratedValue
	private long id; //this will be a generated value
	
	@Column(name="FISRTName") //sets column name in the database
	private String firstName;
	
	@Column(name="LAST_Name")
	private String lastName;
	
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="SCHEDULE")
	private String schedule;// will eventually be an arraylist object
	
	@Column(name="ROLE")
	private String role;
	
	@Column(name="AVAILABILITY")
	private String availability;
	
	public Employee() {
		
	}//this is a default constructor expected by JPA(Java Persistent API)

    

	public Employee(long id, String firstName, String lastName, String email, String schdule, String role,String availability) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.schedule = schdule;
		this.role = role;
		this.availability = availability;
	}



	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
	}
	
	public String getAvailability() {
		return availability;
	}


	public void setAvailability(String availability) {
		this.availability = availability;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}



	@Override
	public String toString() {
		return "Employee [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", schdule=" + schedule + ", role=" + role + ", availability=" + availability + "]";
	
	}//this method returns string representation of an object
	
	
	

}//class
