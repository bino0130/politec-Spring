package com.kopo.domain;

public class Review {
	private Integer review_id;
	private String review_title;
	private String review_person;
	private String review_date;
	private String review_content;
	private Integer view_cnt;
	
	public Review() {
		super();
	}

	public Integer getReview_id() {
		return review_id;
	}

	public void setReview_id(Integer review_id) {
		this.review_id = review_id;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public String getReview_person() {
		return review_person;
	}

	public void setReview_person(String review_person) {
		this.review_person = review_person;
	}

	public String getReview_date() {
		return review_date;
	}

	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public Integer getView_cnt() {
		return view_cnt;
	}

	public void setView_cnt(Integer view_cnt) {
		this.view_cnt = view_cnt;
	}
}