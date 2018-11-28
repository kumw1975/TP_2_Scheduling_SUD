package com.MVC.Controllers;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.MVC.Model.Employee;


/*
 * This controller is responsible for handling Database connections
 * */
public class DB_coonectionController {
	
	private Object object;
	
	protected Configuration con;
	private SessionFactory sf;

	public Session session;

	private Transaction tx;
	
	
    
	public DB_coonectionController() {
		super();
        this.con = new Configuration().configure().addAnnotatedClass(Employee.class);
        
	    this.sf = con.buildSessionFactory();
        
	    this.session = sf.openSession();
        
	    this.tx = session.beginTransaction();
	    tx.commit();
	}



	public DB_coonectionController(Object object) {
		
		this.object= object;
	    this.con = new Configuration().configure().addAnnotatedClass(Employee.class);
        
	    this.sf = con.buildSessionFactory();
        
	    this.session = sf.openSession();
        
	    this.tx = session.beginTransaction();
        
	    this.session.save(this.object);
        
	    this.tx.commit();
	}
        
   
}//class
