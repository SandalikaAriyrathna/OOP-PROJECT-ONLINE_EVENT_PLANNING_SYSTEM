package com.oop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Guest;
import com.oop.util.GuestDBUtil;


@WebServlet("/GuestLoginServlet")
public class GuestLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = GuestDBUtil.validate(username, password);
		
		if(isTrue == true) {
			List<Guest> guestDetails = GuestDBUtil.getGuest(username);
			request.setAttribute("guestDetails",guestDetails);
			
			RequestDispatcher dis =  request.getRequestDispatcher("guestaccount.jsp");
			dis.forward(request, response);
			
		}else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
	}

}
