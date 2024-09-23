package com.gladius.dao;

import org.hibernate.Session;

import org.hibernate.Transaction;
import org.hibernate.query.SelectionQuery;

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
	

	public Customer login( String uname,String pass) {
		Customer c=null;
		 Session session=  sessionFactory.openSession();
		
		
		 SelectionQuery<Customer> q = session.createSelectionQuery("from Customer where username = :un and password = :pwd", Customer.class);
		q.setParameter("un", uname);
		q.setParameter("pwd", pass);
		
		c=((SelectionQuery<Customer>) q).uniqueResult();
		
		return c;
	}

	
	
}
