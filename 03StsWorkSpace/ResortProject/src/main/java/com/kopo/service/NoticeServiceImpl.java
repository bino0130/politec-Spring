package com.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopo.domain.Notice;
import com.kopo.repository.NoticeRepository;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	private NoticeRepository noticeRepository;
	
	@Override
	public List<Notice> getAllNotice() {
		return noticeRepository.getAllNotice();
	}

	@Override
	public Notice getOneById(int id) {
		return noticeRepository.getOneById(id);
	}
}