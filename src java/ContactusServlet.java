package com.contactus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ContactusServlet")
public class ContactusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstname = request.getParameter("first_name");
		String lastname = request.getParameter("last_name");
		String email = request.getParameter("your_email");
		String inquiry = request.getParameter("inquiry");
		
		
		boolean isTrue;
		
		isTrue = contactusdbutil.insertcontact(firstname, lastname, email, inquiry);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("result.jsp?fn="+firstname+"&ln="+lastname+"&email="+email+"&inquiry="+inquiry);
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}