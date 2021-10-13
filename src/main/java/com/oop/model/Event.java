package com.oop.model;

public class Event {
	private int id;
	private String ename;
	private String customername;
	private String location;
	private String purpose;
	private String date;
	private String time;
	public Event(int id, String ename, String customername, String location, String purpose, String date, String time) {
		this.id = id;
		this.ename = ename;
		this.customername = customername;
		this.location = location;
		this.purpose = purpose;
		this.date = date;
		this.time = time;
	}
	public int getId() {
		return id;
	}
	public String getEname() {
		return ename;
	}
	public String getCustomername() {
		return customername;
	}
	public String getLocation() {
		return location;
	}
	public String getPurpose() {
		return purpose;
	}
	public String getDate() {
		return date;
	}
	public String getTime() {
		return time;
	}
	
	
	
	
	
}
