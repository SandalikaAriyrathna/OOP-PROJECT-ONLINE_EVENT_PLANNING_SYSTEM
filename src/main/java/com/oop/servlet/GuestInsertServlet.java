package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.util.GuestDBUtil;



@WebServlet("/GuestInsertServlet")
public class GuestInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//when guest input details,it will catch from these lines
		String name = request.getParameter("name");
		String phone= request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue=GuestDBUtil.insertguestdetails(name, phone, email, username, password);
		
		if(isTrue == true) {
		
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
		
			
			RequestDispatcher dis2 = request.getRequestDispatcher("insertguest.jsp");
			dis2.forward(request, response);
		}

	}

}
