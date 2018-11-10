# TP_2_Scheduling_SUD
A scheduling system for employees and service workers

<h1>Tools in consideration:</h1> <br><b> Java | Eclipse EE | Hibernate | Spring MVC | Amazon AWS | JPA | Maven | Angular Js | Amazon RDS | Git/Egit |  MY SQL | Violet UML | Junit | StdLib | AWS VPC | AWS Subnet | AWS EBS | vagrant | docker | ansible | json | yaml | pom | html | css | javascript | angular | CI/CD</b>

<h1>Goals:</h1> <i>Artifacts. requirements / requirement analysis, GRASP princibples (business logic, presentation logic separation) software sequesnce diagram | CRC cards | Conceptual Class Diagrams | UML | refactoring </i>

<ul>
<li>Exploring Inheritance </li>
<li>Requirements and Use Case Modeling</li>
<li>Test-Driven Development </li>
<li>Best Practices in Java Objects and Classes</li>
<li>Domain Modeling</li>
<li>Analysis to Design</li>
<li>UML Interaction Diagrams</li>
<li>System Sequence Diagram </li>
<li>Responsibility Assignment and GRASP GRASP & Design Patterns(&CRC cards)</li>
<li>UML Class Diagrams & Design to Code</li>
<li>Testing and Refactoring*
</ul>

<h1> Overview </h1>
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

Employees can cover shifts in any location provided they do not cross their 40 hr limit

Some locations are service oriented locations. At these locations clients can set up appointments with service workers (employees)
Appointments can only be scheduled during a service workers working hours (shift) depending on the availability of the service worker.
No two appointments can be scheduled for the same time. 

Challenges:
Testing db MVC


Loc -> Org -> Loc -> Employee -> schedule - > shift
Employee -> Salaried - > Hourly
Location -> H.Emps -> Service workers





brima1c
---------------
<ul>
<li>UML Interaction Diagrams</li>
<li>System Sequence Diagram </li>
</ul>

Saad-999
---------------
<ul>
<li>Requirements and Use Case Modeling</li>
<li>Responsibility Assignment and GRASP GRASP & Design Patterns(&CRC cards) /x</li>
</ul>

 Sharifah11
---------------
<ul>
<li>Domain Modeling</li>
<li>Analysis to Design</li>
</ul>
 
