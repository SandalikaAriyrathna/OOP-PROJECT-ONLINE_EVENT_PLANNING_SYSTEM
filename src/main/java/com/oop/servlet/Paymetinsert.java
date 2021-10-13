package com.oop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.util.PaymentDBUtil;


@WebServlet("/Paymetinsert")
public class Paymetinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		String name = request.getParameter("cusname");
		String cusId = request.getParameter("cusid");
		String amount = request.getParameter("amount");
		String cardno = request.getParameter("cno");
		String cardtype = request.getParameter("ctype");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.insertpayment(name, cusId, amount, cardno, cardtype);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("carddetails.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("insertpayment.jsp");
			dis2.forward(request, response);
		}
	}
		
	

}
