package com.kopo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kopo.domain.Resort;

@Mapper
public interface ResortMapper {
	// create
	
	// read
	
	// update
		public void updateReservation (@Param("Resort") Resort resort);
	
	// delete
}