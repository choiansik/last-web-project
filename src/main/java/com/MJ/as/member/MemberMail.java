package com.MJ.as.member;

public class MemberMail {
	private String memMail;
	private String memMail2;
	
	
	public String getMemMail() {
		return memMail;
	}
	public void setMemMail(String memMail) {
		this.memMail = memMail;
	}
	public String getMemMail2() {
		return memMail2;
	}
	public void setMemMail2(String memMail2) {
		this.memMail2 = memMail2;
	}
	
	public String toString() {
		return memMail + "@" + memMail2;
	}
	
}
