package com.kopo.domain;

public class Players {
	private String name; 		// 선수 이름
	private String position; 	// 포지션
	private String club; 		// 소속 클럽
	private String nation; 		// 소속 국가
	private String league; 		// 소속 리그
	private String skill; 		// 개인기
	private String weakFoot; 	// 약발
	private String height; 		// 신장
	private String season; 		// 선수 시즌
	private String description; // 선수 설명
	private String imgPath;
	
	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}

	public Players() { // 기본 생성자
		super();
	}

	public Players(String name, String position) { // 일반 생성자
		super();
		this.name = name;
		this.position = position;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getClub() {
		return club;
	}

	public void setClub(String club) {
		this.club = club;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getLeague() {
		return league;
	}

	public void setLeague(String league) {
		this.league = league;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getWeakFoot() {
		return weakFoot;
	}

	public void setWeakFoot(String weakFoot) {
		this.weakFoot = weakFoot;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}
	
	
}