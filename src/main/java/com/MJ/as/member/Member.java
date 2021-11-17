package com.MJ.as.member;

public class Member {
	private String memId; // 아이디
	private String memPw; // 비밀번호
	private String memName; // 이름
	private String memMail; // 이메일
	private String memMail2;
	private String memPhone1; // 폰번호
	private String memPhone2;
	private String memPhone3;
	private String memGender; //  성별 
	private String memAddNum; // 우편번호
	private String memAddress; // 주소
	private String memAddress2;
	private String memAddPlus; // 주소 상세
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
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
	public String getMemPhone1() {
		return memPhone1;
	}
	public void setMemPhone1(String memPhone1) {
		this.memPhone1 = memPhone1;
	}
	public String getMemPhone2() {
		return memPhone2;
	}
	public void setMemPhone2(String memPhone2) {
		this.memPhone2 = memPhone2;
	}
	public String getMemPhone3() {
		return memPhone3;
	}
	public void setMemPhone3(String memPhone3) {
		this.memPhone3 = memPhone3;
	}
	public String getMemGender() {
		return memGender;
	}
	public void setMemGender(String memGender) {
		this.memGender = memGender;
	}
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
		return this.memId;
	}
}
