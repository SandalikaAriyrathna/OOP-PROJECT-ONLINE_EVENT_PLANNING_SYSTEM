package com.oop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.Payment;
import com.oop.util.PaymentDBUtil;


@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid = request.getParameter("payid");
		String cusname = request.getParameter("cusname");
		String cusid = request.getParameter("cusid");
		String amount = request.getParameter("amt");
		String cardNo = request.getParameter("cardno");
		String cardType = request.getParameter("cardtype");
		
		boolean isTrue;
		
		isTrue = PaymentDBUtil.updatepayment(pid, cusname, cusid, amount, cardNo, cardType);
		
		if(isTrue == true) {
			
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(pid);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("paymentdetails.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(pid);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("paymentdetails.jsp");
			dis.forward(request, response);
		}
	}
	
}


