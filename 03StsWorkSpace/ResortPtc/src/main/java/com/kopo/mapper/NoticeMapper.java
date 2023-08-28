package com.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kopo.domain.Notice;

@Mapper
public interface NoticeMapper {
	// create
//	public void makeReservation (@Param("Resort") Resort resort);
			
	// read
	public List<Notice> getAllNotice();
			
	// update
//	public void updateReservation (@Param("Resort") Resort resort);
	
	// delete
			 
}