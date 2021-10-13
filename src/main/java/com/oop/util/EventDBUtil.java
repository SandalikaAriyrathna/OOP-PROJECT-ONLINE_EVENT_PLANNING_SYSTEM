package com.oop.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.model.Event;

public class EventDBUtil extends DBconnect{
	private static boolean isSuccess;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<Event> getEvents(){
		ArrayList<Event> eve=new ArrayList<>();
		
		try {
			con=getConnection();
			stmt=con.createStatement();
			String sql="select * from event";
			rs=stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id=rs.getInt(1);
				String ename=rs.getString(2);
				String customername=rs.getString(3);
				String location=rs.getString(4);
				String purpose=rs.getString(5);
				String date=rs.getString(6);
				String time=rs.getString(7);
				
				Event e=new Event(id,ename,customername,location,purpose,date,time);
				eve.add(e);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return eve;
	}
	
	public static boolean insertEvent(String ename,String cname,String location,String purpose,String date,String time) {
		boolean isSuccess=false;
		
		try {
			con=getConnection();
			stmt=con.createStatement();
			String sql="insert into eventmanage.event values(0,'"+ename+"','"+cname+"','"+location+"','"+purpose+"','"+date+"','"+time+"')";
			int rs=stmt.executeUpdate(sql);
			
			if (rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateevent(String id,String ename,String cname,String location,String purpose,String date,String time) {
		
		try {
			con=getConnection();
			stmt=con.createStatement();
			String sql="update event set ename='"+ename+"',customername='"+cname+"',location='"+location+"',purpose='"+purpose+"',date='"+date+"',time='"+time+"' where id='"+id+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean deleteevent(String id) {
		int convId=Integer.parseInt(id);
		
		try {
			con=getConnection();
			stmt=con.createStatement();
			String sql="delete from event where id='"+convId+"' ";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}
			else {
				isSuccess=false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();		
		}
		return isSuccess;
	}
}
