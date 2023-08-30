package com.kopo.service;

import java.util.List;

import com.kopo.domain.Notice;

public interface NoticeService {
	// notice 테이블 데이터 입력
	public void makeNotice(Notice notice);
	
	// notice 테이블 전체 출력
	public List<Notice> getAllNotice();
	
	// notice 테이블 하나 출력
	public Notice getOneById(int id);
	
	// notice 테이블 업데이트
	public void updateNotice(Notice notice);
	
	// notice 테이블 삭제
	public void deleteNotice(int id);
}