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
	
	@Column(name="EMPLOYEE_ID") //sets column name in the database
	private String employee_ID;
	
	@Column(name="FIRSTNAME") //sets column name in the database
	private String firstName;
	
	@Column(name="LAST_Name")
	private String lastName;
	
	@Column(name="EMAIL")
	private String email;
	
	@Column(name="PHONE_NUMBER")
	private String phone_number;// will eventually be an arraylist object
	
	@Column(name="ROLE")
	private String role;
	
	@Column(name="ADDRESS")
	private String address;
	
	@Column(name="PASSWORD")
	private String password;
	
	public Employee() {
		
	}//this is a default constructor expected by JPA(Java Persistent API)

    

	public Employee(long id, String employee_id, String firstName, String lastName, String email, String phone_number, String role,String address, String password) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone_number = phone_number;
		this.role = role;
		this.address = address;
		this.employee_ID= employee_id;
		this.password=password;
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

	
	
	public String getPhone_number() {
		return phone_number;
	}



	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}


	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

    

	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}
	

	public String getEmployee_ID() {
		return employee_ID;
	}



	public void setEmployee_ID(String employee_ID) {
		this.employee_ID = employee_ID;
	}

    

	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	@Override
	public String toString() {
		return "Employee [id=" + id + ", employee_ID=" + employee_ID + ", firstName=" + firstName + ", lastName="
				+ lastName + ", email=" + email + ", phone_number=" + phone_number + ", role=" + role + ", address="
				+ address + ", password=" + password + "]";
	}



	

    
	//this method returns string representation of an object
	
	
	

}//class
