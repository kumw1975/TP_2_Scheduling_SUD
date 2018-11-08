# TP_2_Scheduling_SUD
A scheduling system for employees and service workes


An organization has various locations
At the top level of the organization is an admin who has read and write access to all applications in all locations(Root user)
Each location has a manager (admin) who is also given read and write permissions only for his location
Each location has employees who have different roles. 

each employee has a role (cashier, pharmacist, waiter, barber, manager etc)
a manager can create a schedule for his employees
the SUD can auto generate a schedule

employees can send their availability before a schedule is created
employees can request to swap shifts with other employees in the same role
each location has an id or an address
employees can ask other employees to cover their shif. 

in the event that an employee ask for their shift to be covered, 
	the request is sent to the manager.
	The manager sends the request to all employees
	any employee in the same role can accept the request
	An employee can not work more than 40hrs a week. 
	the manager approves responses to requests. 
	The manager can choose to automate responses to requests. so that when
	they come in they are automagically sent to all employees ( or only to employees in that role. )
