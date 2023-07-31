package com.kopo.domain;

import org.springframework.web.multipart.MultipartFile;

public class Players {
	private Integer id;				// Primary Key
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
	private String imgPath; 	// 이미지 경로
	private MultipartFile fileImage; // 멀티파트 파일
	private String positionSort; 	// 포지션 구분
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getPositionSort() {
		return positionSort;
	}

	public void setPositionSort(String position) {
		if(position.equals("ST") || position.equals("LW") || 
		position.equals("RW") || position.equals("LF") || 
		position.equals("CF") || position.equals("RF")) {
			
			this.positionSort = "badge badge-danger"; // 공격수
			
		} else if(position.equals("LAM") || position.equals("CAM") || position.equals("RAM") ||
				position.equals("LCM") || position.equals("CM") || position.equals("RCM") ||
				position.equals("LDM") || position.equals("CDM") || position.equals("RDM") ||
				position.equals("LM") || position.equals("RM") ) {
			
			this.positionSort = "badge badge-success"; // 미드필더
			
		} else if(position.equals("LWB") || position.equals("LB") || position.equals("LCB") ||
				position.equals("CB") || position.equals("RCB") || position.equals("RB") ||
				position.equals("RWB") ) {
			
			this.positionSort = "badge badge-primary"; // 수비수
			
		} else if(position.equals("GK")) {
			this.positionSort = "badge badge-warning"; // 골키퍼
		}
		
	}

	public MultipartFile getFileImage() {
		return fileImage;
	}

	public void setFileImage(MultipartFile fileImage) {
		this.fileImage = fileImage;
	}

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