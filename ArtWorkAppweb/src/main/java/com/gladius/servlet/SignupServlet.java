package com.gladius.servlet;

import java.io.IOException;

import com.gladius.conn.HibernateUtil;
import com.gladius.dao.CustomerDAO;
import com.gladius.entity.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


		String name=req.getParameter("name");
		String username=req.getParameter("username");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Customer customer=new Customer(name, username, email, password);
		System.out.println(customer);
		
		CustomerDAO dao=new CustomerDAO(HibernateUtil.getSessionFactory());
		boolean f=dao.saveCustomer(customer);
		
		if(f) {
			System.out.println("registerd Successfully");
			resp.sendRedirect("login.jsp");
		}
		else
			System.out.println("Server Error");
	}

	

}
