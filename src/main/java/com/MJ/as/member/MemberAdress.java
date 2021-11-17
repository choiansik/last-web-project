package com.MJ.as.member;

public class MemberAdress {
	private String memAddNum;
	private String memAddress;
	private String memAddress2;
	private String memAddPlus;
	
	
	public String getMemAddNum() {
		return memAddNum;
	}
	public void setMemAddNum(String memAddNum) {
		this.memAddNum = memAddNum;
	}
	public String getMemAddress() {
		return memAddress;
	}
	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}
	
	public String getMemAddress2() {
		return memAddress2;
	}
	public void setMemAddress2(String memAddress2) {
		this.memAddress2 = memAddress2;
	}
	public String getMemAddPlus() {
		return memAddPlus;
	}
	public void setMemAddPlus(String memAddPlus) {
		this.memAddPlus = memAddPlus;
	}
	
	public String toString() {
		return memAddNum + "\n" + memAddress +  memAddress2 + " " + memAddPlus;
	}
	
}
