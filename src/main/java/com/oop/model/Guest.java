package com.oop.model;

public class Guest {
	private int guestId;
	private String guestName;
	private String guestPhone;
	private String guestEmail;
	private String userName;
	private String password;
	
	public Guest(int guestId, String guestName, String guestPhone, String guestEmail, String userName,
			String password) {
		
		this.guestId = guestId;
		this.guestName = guestName;
		this.guestPhone = guestPhone;
		this.guestEmail = guestEmail;
		this.userName = userName;
		this.password = password;
	}

	public int getGuestId() {
		return guestId;
	}

	public String getGuestName() {
		return guestName;
	}
	
	public String getGuestPhone() {
		return guestPhone;
	}

	public String getGuestEmail() {
		return guestEmail;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
}
