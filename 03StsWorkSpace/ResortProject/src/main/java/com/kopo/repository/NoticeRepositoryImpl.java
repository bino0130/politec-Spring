package com.kopo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kopo.domain.Notice;
import com.kopo.mapper.NoticeMapper;

@Repository
public class NoticeRepositoryImpl implements NoticeRepository {
	@Autowired
	private NoticeMapper mapper;
	
	private List<Notice> listOfNotice = new ArrayList<Notice>();

	@Override
	public List<Notice> getAllNotice() {
		listOfNotice = mapper.getAllNotice();
		return listOfNotice;
	}

	@Override
	public Notice getOneById(int id) {
		return mapper.getOneById(id);
	}
}