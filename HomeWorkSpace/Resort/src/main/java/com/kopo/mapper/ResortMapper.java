package com.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kopo.domain.Resort;

@Mapper
public interface ResortMapper {
	// create
		public void makeReservation (@Param("Resort") Resort resort);
		
	// read
		public List<Resort> getAllReserve ();
		
	// update
		public void updateReservation (@Param("Resort") Resort resort);
	
	// delete
		
}