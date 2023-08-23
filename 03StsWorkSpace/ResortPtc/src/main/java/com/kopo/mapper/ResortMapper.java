package com.kopo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kopo.domain.Resort;

@Mapper
public interface ResortMapper {
	// create
		public void makeReservation (@Param("Resort") Resort resort);
		
	// read
	
		
	// update
		public void updateReservation (@Param("Resort") Resort resort);
	
	// delete
		
}