package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.util.EventDBUtil;


@WebServlet("/DeleteEventServlet")
public class DeleteEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("eventid");//in double quotation update event tables name attribute 
		
		boolean isTrue;
		isTrue=EventDBUtil.deleteevent(id);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("deletesuccess.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("deleteunsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}
		

}
