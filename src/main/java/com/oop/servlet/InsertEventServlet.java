package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.util.EventDBUtil;


@WebServlet("/InsertEventServlet")
public class InsertEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String ename=request.getParameter("ename");
		String cname=request.getParameter("customername");
		String location=request.getParameter("location");
		String purpose=request.getParameter("purpose");
		String date=request.getParameter("date");
		String time=request.getParameter("time");
		
		boolean isTrue;
		
		isTrue=EventDBUtil.insertEvent(ename, cname, location, purpose, date, time);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("successprab.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2=request.getRequestDispatcher("unsuccessprab.jsp");
			dis2.forward(request, response);
		}
	}

}
