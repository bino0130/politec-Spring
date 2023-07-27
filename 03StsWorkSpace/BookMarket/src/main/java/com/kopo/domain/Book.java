package com.kopo.domain;

import org.springframework.web.multipart.MultipartFile;

// DTO 역할
public class Book {
	private String bookId;		// 도서ID
	private String imgPath;		// 이미지 경로
	private String name;		// 도서명
	private int unitPrice;		// 가격
	private String author;		// 저자
	private String description;	// 설명
	private String publisher;	// 출판사
	private String category;	// 분류
	private String unitsInstock;// 재고수
	private String releaseDate;	// 출판일
	private String condition;	// 신규 or 중고 or 전자책
	private MultipartFile bookImage;

	public MultipartFile getBookImage() {
		return bookImage;
	}

	public void setBookImage(MultipartFile bookImage) {
		this.bookImage = bookImage;
	}

	public Book() {
		super();
	}
	
	// 일반 생성자
	public Book(String bookId, String name, int unitPrice) {
		super();
		this.bookId = bookId;
		this.name = name;
		this.unitPrice = unitPrice;
	}
	
	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
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
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getUnitsInstock() {
		return unitsInstock;
	}
	public void setUnitsInstock(String unitsInstock) {
		this.unitsInstock = unitsInstock;
	}
	public String getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
}