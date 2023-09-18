package com.kopo.domain;

public class ReservationStatus {
	private String statusDate;
	private String korDayOfWeek;
	private String room1;
	private String room2;
	private String room3;
	private String room4;
	
	public ReservationStatus() {
		super();
	}
	
	public String getKorDayOfWeek() {
		return korDayOfWeek;
	}

	public void setKorDayOfWeek(String korDayOfWeek) {
		this.korDayOfWeek = korDayOfWeek;
	}

	public ReservationStatus(String room1, String room2, String room3, String room4) {
		super();
		this.room1 = room1;
		this.room2 = room2;
		this.room3 = room3;
		this.room4 = room4;
	}
	
	public String getStatusDate() {
		return statusDate;
	}
	public void setStatusDate(String statusDate) {
		this.statusDate = statusDate;
	}
	public String getRoom1() {
		return room1;
	}
	public void setRoom1(String room1) {
		this.room1 = room1;
	}
	public String getRoom2() {
		return room2;
	}
	public void setRoom2(String room2) {
		this.room2 = room2;
	}
	public String getRoom3() {
		return room3;
	}
	public void setRoom3(String room3) {
		this.room3 = room3;
	}
	
	public String getRoom4() {
		return room4;
	}

	public void setRoom4(String room4) {
		this.room4 = room4;
	}
}