package com.oop.model;

public class Payment {
	private int pid;
	private String cusname;
	private String cusid;
	private String amount;
	private String cardno;
	private String cardtype;
	
	public Payment(int pid, String cusname, String cusid, String amount, String cardno, String cardtype) {
		this.pid = pid;
		this.cusname = cusname;
		this.cusid = cusid;
		this.amount = amount;
		this.cardno = cardno;
		this.cardtype = cardtype;
	}

	public int getPid() {
		return pid;
	}


	public String getCusname() {
		return cusname;
	}


	public String getCusid() {
		return cusid;
	}


	public String getAmount() {
		return amount;
	}


	public String getCardno() {
		return cardno;
	}


	public String getCardtype() {
		return cardtype;
	}
	
}
