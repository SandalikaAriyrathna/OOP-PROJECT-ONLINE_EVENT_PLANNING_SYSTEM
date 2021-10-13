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


@WebServlet("/DeletePaymentServlet")
public class DeletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String pid = request.getParameter("payid");
		boolean isTrue;
		
		isTrue = PaymentDBUtil.deletePayment(pid);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("insertpayment.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Payment> payDetails = PaymentDBUtil.getPaymentDetails(pid);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("paymentdetails.jsp");
			dispatcher.forward(request, response);
		}
	
	}

}
