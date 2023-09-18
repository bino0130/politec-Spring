package com.kopo.domain;

public class Reply {
	private int root_id;
	private int reply_id;
	private String reply_person;
	private String reply_date;
	private String reply_content;
	private int re_level; // re_level이 댓글 레벨 (댓글, 답글)
	private int re_cnt; // re_cnt가 댓글 순서 (답글 내 출력 순서)
	
	public Reply() {
		super();
	}

	public int getRoot_id() {
		return root_id;
	}

	public void setRoot_id(int root_id) {
		this.root_id = root_id;
	}

	public int getReply_id() {
		return reply_id;
	}

	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}

	public String getReply_person() {
		return reply_person;
	}

	public void setReply_person(String reply_person) {
		this.reply_person = reply_person;
	}

	public String getReply_date() {
		return reply_date;
	}

	public void setReply_date(String reply_date) {
		this.reply_date = reply_date.substring(0, 10);
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	
	public int getRe_level() {
		return re_level;
	}

	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}

	public int getRe_cnt() {
		return re_cnt;
	}

	public void setRe_cnt(int re_cnt) {
		this.re_cnt = re_cnt;
	}
}