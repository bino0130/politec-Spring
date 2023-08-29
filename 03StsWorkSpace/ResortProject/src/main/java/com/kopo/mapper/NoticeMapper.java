package com.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kopo.domain.Notice;

@Mapper
public interface NoticeMapper {
	// create
//	public void makeReservation (@Param("Resort") Resort resort);
			
	// read
	public List<Notice> getAllNotice();
	
	public Notice getOneById(@Param("notice_id") int notice_id);
			
	// update
//	public void updateReservation (@Param("Resort") Resort resort);
	
	// delete
			 
}