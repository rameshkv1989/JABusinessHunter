package com.jabh.model;

import java.io.Serializable;

public class ChangePassword implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4152275467634943774L;
	private String username;
	private String Oldpassword;
	private String OldpasswordDB;
	private String newPassword;
	private String confirmPassword;
	private String message;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getOldpassword() {
		return Oldpassword;
	}
	public void setOldpassword(String oldpassword) {
		Oldpassword = oldpassword;
	}
	public String getOldpasswordDB() {
		return OldpasswordDB;
	}
	public void setOldpasswordDB(String oldpasswordDB) {
		OldpasswordDB = oldpasswordDB;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
