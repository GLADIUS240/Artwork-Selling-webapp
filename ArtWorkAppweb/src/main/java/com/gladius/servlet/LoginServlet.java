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

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String name= req.getParameter("uname");
		String pass= req.getParameter("pass");

		CustomerDAO dao=new CustomerDAO(HibernateUtil.getSessionFactory());
		Customer c=dao.login(name, pass);
		
		HttpSession session=req.getSession();
		if(c==null) {
			session.setAttribute("msg", "Invalid Username or Password");
			resp.sendRedirect("login.jsp");
		}
		else {
			session.setAttribute("loggedinUser", c);
			resp.sendRedirect("index.jsp");
		}
		
}
	
}
