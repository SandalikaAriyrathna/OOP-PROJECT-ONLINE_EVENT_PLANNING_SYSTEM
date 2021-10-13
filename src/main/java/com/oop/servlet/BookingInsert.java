package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.util.bookingDBUtill;


@WebServlet("/BookingInsert")
public class BookingInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String cusID = request.getParameter("cusid");
		String venue = request.getParameter("venue");
		String date = request.getParameter("date");
		String event = request.getParameter("event");
		//int capacity = request.getParameter("capacity")    //capacity data type_int in.db
		int capacity = Integer.parseInt(request.getParameter("capacity"));
		
		boolean isTrue;  
		
		isTrue = bookingDBUtill.insertbooking(cusID, venue, date, event, capacity);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("successful.jsp");
			dis.forward(request,response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("uccessful.jsp");
			dis2.forward(request,response);
		}
		
		
		
		
		
		
	}

}
