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
    
	private DB_coonectionController() {
		
	}
	
	public DB_coonectionController(Object object) {
		super();
		this.object = object;
	}

        /*
         * This method is responsible for instantiating a db connection object
         * */
	public void db_connection() 
    	{
	    	Configuration con = new Configuration().configure().addAnnotatedClass(Employee.class);
        
	    	SessionFactory sf = con.buildSessionFactory();
        
	    	Session session = sf.openSession();
        
	    	Transaction tx = session.beginTransaction();
        
	    	session.save(this.object);
        
	    	tx.commit();
        
       }
}//class
