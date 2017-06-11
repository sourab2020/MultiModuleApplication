package org.DAO;

import java.util.Date;

public class UserInfo {
	String userId;
	String password;
	Date loginTime;
	
	
	public UserInfo(String name, String password, String time) {
		// TODO Auto-generated constructor stub
		this.userId = userId;
		this.password = password;
		this.loginTime = loginTime;
		
		
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Date getLoginTime() {
		return loginTime;
	}
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}
	
	
	
}
