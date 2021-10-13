package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Guest;
import com.oop.util.GuestDBUtil;



@WebServlet("/DeleteGuestServlet")
public class DeleteGuestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("guestid");
		
		boolean isTrue;
		
		isTrue = GuestDBUtil.deleteguest(id);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("insertguest.jsp");
			dispatcher.forward(request, response);
			
		}else {
			
			List<Guest> guestDetails =GuestDBUtil.getGuestDetails(id);
			request.setAttribute("guestDetails", guestDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("guestaccount.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
