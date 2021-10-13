package com.oop.model;

public class Booking { 
	private int bookingid;
	private String cusid;
	private String venue;
	private String date;
	private String eventtype;
	private int capacity;
	public Booking(int bookingid, String cusid, String venue, String date, String eventtype, int capacity) {
		super();
		this.bookingid = bookingid;
		this.cusid = cusid;
		this.venue = venue;
		this.date = date;
		this.eventtype = eventtype;
		this.capacity = capacity;
	}
	public int getBookingid() {
		return bookingid;
	}
	public String getCusid() {
		return cusid;
	}
	public String getVenue() {
		return venue;
	}
	public String getDate() {
		return date;
	}
	public String getEventtype() {
		return eventtype;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
	public void setCusid(String cusid) {
		this.cusid = cusid;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setEventtype(String eventtype) {
		this.eventtype = eventtype;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	
	
	
	
	

}
