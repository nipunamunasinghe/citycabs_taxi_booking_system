package com.contactus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updatecontactus")
public class updatecontactus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String contactid = request.getParameter("contactid");
		String firstname = request.getParameter("first_name");
		String lastname = request.getParameter("last_name");
		String email = request.getParameter("your_email");
		String inquiry = request.getParameter("inquiry");
		
		
		boolean isTrue;
		
		isTrue = contactusdbutil.updatecontactus(contactid, firstname, lastname, email, inquiry);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("result.jsp?fn="+firstname+"&ln="+lastname+"&email="+email+"&inquiry="+inquiry);
			
			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("details.jsp");
			dis.forward(request, response);
		}
	}

}
