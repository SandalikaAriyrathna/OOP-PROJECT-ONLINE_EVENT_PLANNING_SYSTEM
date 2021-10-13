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

import com.oop.model.Booking;
import com.oop.util.bookingDBUtill;

/**
 * Servlet implementation class BookigServelet
 */
@WebServlet("/BookigServelet")
public class BookigServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
			String bookingID = request.getParameter("bookID");
		//	String customerID = request.getParameter("cusID");
			boolean isTrue;
		
			isTrue = bookingDBUtill.validate(bookingID);
			if(isTrue == true) {
				List<Booking> bookingDetails = bookingDBUtill.getBookingDetails(bookingID);
				request.setAttribute("BookingDetails", bookingDetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("bookingdata.jsp");
				dis.forward(request,response);
				
				
			
			}
			
			else{
				out.println("<script type='text/javascript'>");
				out.println("alert('Booking ID is incorrect');");
				out.println("location=booking.jsp");
				out.println("</script>");
				
				
			
			}
			
			
	}

}
