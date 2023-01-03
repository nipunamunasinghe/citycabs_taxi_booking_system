package com.contactus;

public class contactus {
	
	private int contactid;
	private String firstname;  
	private String lastname;
	private String email; 
	private String inquiry;
	
	public contactus(int contactid, String firstname, String lastname, String email, String inquiry) {
		
		this.contactid = contactid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.inquiry = inquiry;
	}

	public int getContactid() {
		return contactid;
	}

	public String getFirstname() {
		return firstname;
	}
	
	public String getLastname() {
		return lastname;
	}

	public String getEmail() {
		return email;
	}

	public String getInquiry() {
		return inquiry;
	}
}
