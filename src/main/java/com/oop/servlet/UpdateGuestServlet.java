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




@WebServlet("/UpdateGuestServlet")
public class UpdateGuestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("guestid");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = GuestDBUtil.updateguest(id, name, phone, email, username, password);
		
		if(isTrue == true) {
			
			List<Guest> guestDetails = GuestDBUtil.getGuestDetails(id);
			request.setAttribute("guestDetails", guestDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("guestaccount.jsp");
			dis.forward(request, response);
			
		}else {
			
			List<Guest> guestDetails = GuestDBUtil.getGuestDetails(id);
			request.setAttribute("guestDetails", guestDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("guestaccount.jsp");
			dis2.forward(request, response);
		}
	}

}
