package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Booking;
import com.oop.util.bookingDBUtill;

/**
 * Servlet implementation class UpdateBookingServelet
 */
@WebServlet("/UpdateBookingServelet")
public class UpdateBookingServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bookingid = request.getParameter("bookingid");
		String cusid = request.getParameter("cusid");
		String venue = request.getParameter("venue");
		String date = request.getParameter("date");
		String event = request.getParameter("event");
		int capacity = Integer.parseInt(request.getParameter("capacity"));
		//String capacity = request.getParameter("capacity");
		
		boolean isTrue;
		
		isTrue = bookingDBUtill.updatebooking(bookingid, cusid, venue, date, event,capacity);
		
		
		if(isTrue == true) {
			
			List<Booking> bookingDetails = bookingDBUtill.getBookingDetails(bookingid);
			request.setAttribute("BookingDetails", bookingDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("bookingdata.jsp");
			dis.forward(request,response);
		}else {
			List<Booking> bookDetails = bookingDBUtill.getBookingDetails(bookingid);
			request.setAttribute("BookingDetails", bookDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("bookingdata.jsp");
			dis2.forward(request,response);
		}
		
		
	}

}
