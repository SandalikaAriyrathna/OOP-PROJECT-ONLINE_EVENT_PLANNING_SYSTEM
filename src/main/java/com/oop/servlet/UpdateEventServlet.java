package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oop.util.EventDBUtil;




@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("eventid");//in double quotation update event tables name attribute 
		String ename=request.getParameter("ename");
		String cname=request.getParameter("customername");
		String location=request.getParameter("location");
		String purpose=request.getParameter("purpose");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		
		boolean isTrue;
		
		isTrue=EventDBUtil.updateevent(id, ename, cname, location, purpose, date, time);
		
		if(isTrue==true) {
			List<com.oop.model.Event> eveDetails=EventDBUtil.getEvents();
			request.setAttribute("eveDetails",eveDetails);
			RequestDispatcher dis=request.getRequestDispatcher("eventdetails.jsp");
			dis.forward(request, response);
		}
		else {
			List<com.oop.model.Event> eveDetails=EventDBUtil.getEvents();
			request.setAttribute("eveDetails",eveDetails);//in double quotes should be equal to item in event detail 
			RequestDispatcher dis2=request.getRequestDispatcher("eventdetails.jsp");
			dis2.forward(request, response);
		}
				
	}

}
