package com.kopo.service;

import java.util.List;

import com.kopo.domain.Notice;

public interface NoticeService {
	// notice 테이블 전체 출력
	public List<Notice> getAllNotice();
	
	// notice 테이블 하나 출력
	public Notice getOneById(int id);
}