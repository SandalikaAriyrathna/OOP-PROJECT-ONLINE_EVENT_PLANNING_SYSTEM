package com.oop.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Guest;



public class GuestDBUtil extends DBconnect{
	
	private static boolean isSuccess;//instance variable
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String username, String password) {
		
		try {
			
			//DBconnection
			con = getConnection();
			stmt = con.createStatement();	
			
			String sql = "select * from guest where username= '"+username+"' and password= '"+password+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				 isSuccess = true;
			}else {
				 isSuccess = false;
			}
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Guest> getGuest(String userName){
		
		ArrayList<Guest> guest = new ArrayList<>();
		
		try {
			
			//DBconnection
			con = getConnection();
			stmt = con.createStatement();
			
			
			
			String sql = "select * from guest where username= '"+userName+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String email = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Guest g = new Guest(id,name,phone,email,username,password);
				guest.add(g);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return guest;
	}
	
	public static boolean insertguestdetails(String name, String phone, String email, String username, String password) {
		
		boolean isSuccess = false;
				
			
			try {
				
				//DBconnection
				con = getConnection();
				stmt = con.createStatement();			
				
				String sql = "insert into guest values (0,'"+name+"','"+phone+"','"+email+"','"+username+"','"+password+"')";
				
				int rs = stmt.executeUpdate(sql);
				
				
				if(rs>0) {
					 isSuccess = true;
				}else {
					 isSuccess = false;
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		return isSuccess;	
		
	}
	
  public static boolean updateguest(String id,String name,String phone,String email,String username,String password) {
		
		try {

			//DBconnection
			con = getConnection();
			stmt = con.createStatement();		
			
			String sql = "update guest set guestName='"+name+"',guestPhone='"+phone+"',guestEmail='"+email+"',username='"+username+"',password='"+password+"'" + " where guestId='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				 isSuccess = true;
			}else {
				 isSuccess = false;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public static List<Guest> getGuestDetails(String Id){
		
		ArrayList<Guest> guest = new ArrayList<>();
		
		int convertedID = Integer.parseInt(Id);
		
		try {
			
			con = getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from guest where guestId = '"+convertedID+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String phone = rs.getString(3);
				String email = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				Guest g = new Guest(id,name,phone,email,username,password);
				guest.add(g);
			}
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return guest;
	}

	
	public static boolean deleteguest(String id) {
		
		int convId = Integer.parseInt(id);
		
		try {
			
			con = getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from guest where guestId='"+convId+"'";
			
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				isSuccess = true;
			}else{
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
