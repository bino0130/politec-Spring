package com.kopo.domain;

public class Webtoon {
	private String name;
	private String imagePath;
	private String author;
	private String description;
	private String ranking;
	private String releaseDay;
	private String website;
	private String genre;
//	private int hits;
//	private String condition;
	
	public Webtoon() {
		super();
	}
	
	public Webtoon(String name, String imagePath) {
		super();
		this.name = name;
		this.imagePath = imagePath;
	}
	
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getRanking() {
		return ranking;
	}
	public void setRanking(String ranking) {
		this.ranking = ranking;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
//	public int getHits() {
//		return hits;
//	}
//	public void setHits(int hits) {
//		this.hits = hits;
//	}
	public String getReleaseDay() {
		return releaseDay;
	}
	public void setReleaseDay(String releaseDay) {
		this.releaseDay = releaseDay;
	}
//	public String getCondition() {
//		return condition;
//	}
//	public void setCondition(String condition) {
//		this.condition = condition;
//	}
}