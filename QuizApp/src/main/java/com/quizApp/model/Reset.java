package com.quizApp.model;

public class Reset {

	private String actualuser;
	public String getActualuser() {
		return actualuser;
	}
	public void setActualuser(String actualuser) {
		this.actualuser = actualuser;
	}
	private String newpassword;
	private String confirmpassword;
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
}
