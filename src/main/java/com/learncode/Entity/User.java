package com.learncode.Entity;

public class User {

	private int UserId;
	private String UserName;
	private String EmailId;
	private String MobileNo;
	private String Password;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String userName, String emailId, String mobileNo, String password) {
		super();
		UserName = userName;
		EmailId = emailId;
		MobileNo = mobileNo;
		Password = password;
	}

	public User(int userId, String userName, String emailId, String mobileNo, String password) {
		super();
		UserId = userId;
		UserName = userName;
		EmailId = emailId;
		MobileNo = mobileNo;
		Password = password;
	}

	public int getUserId() {
		return UserId;
	}

	public void setUserId(int userId) {
		UserId = userId;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getEmailId() {
		return EmailId;
	}

	public void setEmailId(String emailId) {
		EmailId = emailId;
	}

	public String getMobileNo() {
		return MobileNo;
	}

	public void setMobileNo(String mobileNo) {
		MobileNo = mobileNo;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

	@Override
	public String toString() {
		return "User [UserId=" + UserId + ", UserName=" + UserName + ", EmailId=" + EmailId + ", MobileNo=" + MobileNo
				+ ", Password=" + Password + "]";
	}
	
	
	
	
}
