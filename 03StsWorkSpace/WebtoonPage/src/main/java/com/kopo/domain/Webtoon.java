package com.kopo.domain;

public class Webtoon {
	private String webtoonName;
	private String imagePath;
	private String ranking;
	private String website;
	private String author;
	private String description;
	private int hits;
	private String releaseDay;
	private String condition;
	private String genre;
	
	public Webtoon(String webtoonName, String imagePath) {
		super();
		this.webtoonName = webtoonName;
		this.imagePath = imagePath;
	}
	
	public Webtoon() {
		super();
	}
	
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getWebtoonName() {
		return webtoonName;
	}
	public void setWebtoonName(String webtoonName) {
		this.webtoonName = webtoonName;
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
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getReleaseDay() {
		return releaseDay;
	}
	public void setReleaseDay(String releaseDay) {
		this.releaseDay = releaseDay;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
}