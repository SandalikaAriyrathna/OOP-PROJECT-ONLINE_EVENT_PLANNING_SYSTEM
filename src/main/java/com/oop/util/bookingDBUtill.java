package com.oop.util;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Booking;

public class bookingDBUtill extends DBconnect{
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	
	 public static boolean validate (String bookingID) {
	    	
	    	
			try {
	    		con = getConnection();
				stmt = con.createStatement();
				
	    		String sql = "select * from booking where booking_ID='"+bookingID+"' ";
	    		rs = stmt.executeQuery(sql);
	    		
	    		if (rs.next()) {
					isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	
	
	
	
	public static boolean insertbooking(String cusId,String venue,String date,String event,int capacity ) {
		boolean isSuccess = false;
	
	
	
			try {
				con = getConnection();
				stmt = con.createStatement();
			
				
		  		String sql = "insert into booking values(0,'"+cusId+"','"+venue+"','"+date+"','"+event+"','"+capacity+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs>0) {
					
					isSuccess = true;
				}			
				else {
					isSuccess = false;
					}
			}
			catch(Exception e){
				
			}
			
			return isSuccess;
	}
	
	public static boolean updatebooking(String bookingid,String cusid,String venue,String date,String event,int capacity ) {
		boolean isSuccess = false;
	
	
	
			try {
				con = getConnection();
				stmt = con.createStatement();
			
				
				String sql = "update booking set cusID='"+cusid+"',venue='"+venue+"',date='"+date+"',eventType='"+event+"',capacity='"+capacity+"'"+"where booking_ID='"+bookingid+"'";
				int rs = stmt.executeUpdate(sql);
				
				
				if(rs>0) {
					
					isSuccess = true;
				}			
				else {
					isSuccess = false;
					}
			}
			catch(Exception e){
				
			}
			
			return isSuccess;
	}
	
	public static List<Booking> getBookingDetails(String bookingid){
		int conbookingid = Integer.parseInt(bookingid);
		
		ArrayList<Booking> book = new ArrayList<>();
	
	
		try {
			con = getConnection();
			stmt = con.createStatement();
		
			String sql = "select * from booking where booking_ID ='"+conbookingid+"' ";
			rs = stmt.executeQuery(sql);
			
			
			while(rs.next()) {
				int bookingid1 = rs.getInt(1);
				String cusid = rs.getString(2);
				String venue_n = rs.getString(3);
				String date1 = rs.getString(4);
				String e_type = rs.getString(5);
				int capacity1 = rs.getInt(6);

				Booking b = new Booking(bookingid1,cusid,venue_n,date1,e_type,capacity1);
				book.add(b);
				
				
			}
			
		}
		catch(Exception e){
			
		}
		
		
	return book;
	
	}
	

	public static boolean deletebooking(String bookingid) {
		 
		
		int conbookingid = Integer.parseInt(bookingid);
		
		
		try {
			con = getConnection();
			stmt = con.createStatement();
		
			String sql = "delete from booking where booking_ID ='"+conbookingid+"' ";
			int r = stmt.executeUpdate(sql);
		
			if(r>0) {
				
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
	
	
	
}
