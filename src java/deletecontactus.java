package com.contactus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletecontactus")
public class deletecontactus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String contactid = request.getParameter("contactid");
		boolean isTrue;
		
		isTrue = contactusdbutil.deletecontactus(contactid);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("contactus.jsp");
			dispatcher.forward(request, response);
		}
		else {
			

			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
