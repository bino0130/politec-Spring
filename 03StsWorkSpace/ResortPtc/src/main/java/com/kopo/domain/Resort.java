package com.kopo.domain;

public class Resort {
	private String customer_name; // 이름
	private String resv_date; // 예약 날짜
	private Integer room; // 방 종류
	private String addr; // 주소
	private String telnum; // 전화번호
	private String in_name; // 입금자명
	private String memo; // 남길 말
	private String write_date; // 작성 날짜
	private Integer processing; // 진행 상황
	private String resv_date2;
	private Integer room2;
	
	public Resort() {
		super();
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getResv_date() {
		return resv_date;
	}
	
	public void setResv_date(String resv_date) {
		this.resv_date = resv_date;
	}
	public Integer getRoom() {
		return room;
	}
	public void setRoom(Integer room) {
		this.room = room;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getTelnum() {
		return telnum;
	}
	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}
	public String getIn_name() {
		return in_name;
	}
	public void setIn_name(String in_name) {
		this.in_name = in_name;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getWrite_date() {
		return write_date;
	}
	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}
	public Integer getProcessing() {
		return processing;
	}
	public void setProcessing(Integer processing) {
		this.processing = processing;
	}
	
	public String getResv_date2() {
		return resv_date2;
	}
	public void setResv_date2(String resv_date2) {
		this.resv_date2 = resv_date2;
	}
	
	public Integer getRoom2() {
		return room2;
	}
	public void setRoom2(Integer room2) {
		this.room2 = room2;
	}
}