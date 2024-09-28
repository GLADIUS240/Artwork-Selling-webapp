package com.gladius.servlet;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.util.Properties;

import jakarta.activation.DataHandler;
import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeBodyPart;
import jakarta.mail.internet.MimeMessage;
import jakarta.mail.internet.MimeMultipart;
import jakarta.mail.util.ByteArrayDataSource;

@WebServlet("/commission")
@MultipartConfig
public class CommissionServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//code to fetch file from form
		Part filePart = req.getPart("reference"); // Retrieves the file part
		InputStream fileContent = filePart.getInputStream();
		
		
        String subject="New Commission Request";
        String to="sketchvirtuoso@gmail.com";
        String from ="artworkwebappcommissions@gmail.com";
		
        
		
		String size=req.getParameter("size");
		String medium=req.getParameter("medium");
		String budget=req.getParameter("budget");
		String deadline=req.getParameter("deadline");
		String contactNo=req.getParameter("contactno");
//		File reference=req.getParameter("reference");
		String description=req.getParameter("description");
		
		
		//creating message
		String message="Size: "+ size + "	" + "Medium: "+ medium + "\n" + "Budget: ₹" + budget + "	" + "Deadline: " + deadline + "\n"
				+ "Contact No: " + contactNo + "\n\n" + "Description: " + description;
		
		//method start
		
		
		
		
		
		
		
		//methodend
		
		sendAttach(filePart,fileContent,message,subject,to,from);
		
		
		System.out.println(size+" "+medium+" "+budget+" "+deadline+" "+contactNo+" "+"\n\n "+description );
		
		
		resp.sendRedirect("index.jsp");
		
	}
	private static void sendAttach(Part filePart,InputStream fileContent,String message, String subject, String to, String from) {
    	// variable for gmail
		
    			String host="smtp.gmail.com";
    			
    			//get the system properties
    			Properties properties=System.getProperties();
    			System.out.println("Properties:"+properties);
    			
    			
    			//setting important information to properties object
    			
    			properties.put("mail.smtp.host", host);
    			properties.put("mail.smtp.port", "465");
    			properties.put("mail.smtp.ssl.enable", "true");
    			properties.put("mail.smtp.auth", "true");
    			
    			
    			//step1:to get session object
    			Session session=Session.getInstance(properties,new Authenticator() {

    				@Override
    				protected PasswordAuthentication getPasswordAuthentication() {
    					
    					return new PasswordAuthentication("artworkwebappcommissions@gmail.com","hoye mbsl wscs iijt");
    				}});
    			
    			session.setDebug(true);
    			
    			//Step2: Compose the message
    			MimeMessage m= new MimeMessage(session);
    			
    			try {
    			
    			//from email address	
    			m.setFrom(from);
    			
    			//recipient email
    			m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
    			
    			//adding subject to message
    			m.setSubject(subject);
    			
    			//adding attachment
    			
    			MimeMultipart mimeMultipart=new MimeMultipart();
    			//text
    			MimeBodyPart textMime=new MimeBodyPart();
    			
    			//file
    			MimeBodyPart fileMime=new MimeBodyPart();
    			
    			try {
    				textMime.setText(message);
    				
    				
    				fileMime.setDataHandler(new DataHandler(new ByteArrayDataSource(fileContent, filePart.getContentType())));
    				
    				mimeMultipart.addBodyPart(textMime);
    				mimeMultipart.addBodyPart(fileMime);
    				
    				
    			}catch (Exception e) {
					e.printStackTrace();
				}
    			
    			
    			m.setContent(mimeMultipart);
    			
    			//send
    			
    			//step3: Send message using transport class
    			Transport.send(m);
    			
    			System.out.println("Sent Successfully.......");
    			
    		}catch (Exception e) {
    			e.printStackTrace();
    		}
    		
		
	}
	
	

}
