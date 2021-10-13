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


import com.oop.model.Event;
import com.oop.util.AdminDBUtil;
import com.oop.util.EventDBUtil;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		boolean isTrue;
		
		isTrue=AdminDBUtil.validate(username, password);
		
		if(isTrue==true) {
			List<Event> eveDetails=EventDBUtil.getEvents();
			request.setAttribute("eveDetails", eveDetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("eventdetails.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your username or password is incorrect');");
			out.println("location='adminLogin.jsp'");
			out.println("</script>");
		}
	}

}
