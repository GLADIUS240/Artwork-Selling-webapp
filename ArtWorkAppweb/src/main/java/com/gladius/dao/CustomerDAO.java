package com.gladius.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.gladius.entity.Customer;
import org.hibernate.SessionFactory;

public class CustomerDAO {
	private SessionFactory sessionFactory;

	public CustomerDAO(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}
	
	public boolean saveCustomer(Customer customer) {
		 boolean f=false;
		 Session session=  sessionFactory.openSession();
	     Transaction tx =session.beginTransaction();
	     
		 
		  Customer managedCustomer = (Customer) session.merge(customer);
		  
		  if(managedCustomer != null) {
			  f=true;
		  }
	     
	     tx.commit();
	     session.close();
		
		return f;
		
		
	}
	
}
