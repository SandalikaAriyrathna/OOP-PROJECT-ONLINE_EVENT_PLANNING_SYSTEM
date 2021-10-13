package com.oop.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Payment;


	public class PaymentDBUtil extends DBconnect{
	
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
	public static boolean validate(String cardno, String cardtype) {
		
		try {
			con = getConnection();
			stmt = con.createStatement(); 
			String sql = "select * from payment where cardNo='"+cardno+"' and cardType='"+cardtype+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Payment> getPayment(String cardno){
		
		ArrayList<Payment> payment = new ArrayList<>();
		
		try {
			con = getConnection();
			stmt = con.createStatement(); 
			String sql = "select * from payment where cardNo='"+cardno+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int pid = rs.getInt(1);
				String custid = rs.getString(2);
				String custname = rs.getString(3);
				String amt = rs.getString(4);
				String cno = rs.getString(5);
				String cardtype = rs.getString(6);
				
				Payment pay = new Payment(pid,custid,custname,amt,cno,cardtype);
				payment.add(pay);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return payment;
		
	}
	public static boolean insertpayment(String name, String cusId, String amount, String cardno, String cardtype) {
		
		boolean isSuccess = false;
		try {
			con = getConnection();
			stmt = con.createStatement();
			String sql = "insert into payment values (0,'"+name+"', '"+cusId+"', '"+amount+"','"+cardno+"', '"+cardtype+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}	
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
public static boolean updatepayment(String pid, String cusname, String cusid, String amt, String cardno, String cardtype) {
		
		try {
			con = getConnection();
			stmt = con.createStatement();
			String sql = "update payment set customerName='"+cusname+"',CustomerId='"+cusid+"',amount='"+amt+"',cardNo='"+cardno+"',cardType='"+cardtype+"'"
			              + "where paymentId='"+pid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static List<Payment> getPaymentDetails(String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList<Payment> pay = new ArrayList<>();
		
		try {
			
			con = getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where PaymentId='"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int pid = rs.getInt(1);
				String custid = rs.getString(2);
				String custname = rs.getString(3);
				String amt = rs.getString(4);
				String cardno = rs.getString(5);
				String cardtype = rs.getString(6);
				
				Payment p = new Payment(pid,custid,custname,amt,cardno,cardtype);
				pay.add(p);
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return pay;
	}
	
	public static boolean deletePayment(String pid){
		
		int convId = Integer.parseInt(pid);
		
		try {
			
			con = getConnection();
			stmt = con.createStatement();
			String sql = "delete from payment where paymentId='"+convId+"'";
			int r = stmt.executeUpdate(sql);
			
			if (r > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}
