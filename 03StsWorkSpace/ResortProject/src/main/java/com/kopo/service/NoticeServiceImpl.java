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

	@Override
	public void makeNotice(Notice notice) {
		noticeRepository.makeNotice(notice);
	}

	@Override
	public void updateNotice(Notice notice) {
		noticeRepository.updateNotice(notice);
	}
	
	@Override
	public void updateViewCnt(int id, int view_cnt) {
		noticeRepository.updateViewCnt(id, view_cnt);
	}

	@Override
	public void deleteNotice(int id) {
		noticeRepository.deleteNotice(id);
	}
}