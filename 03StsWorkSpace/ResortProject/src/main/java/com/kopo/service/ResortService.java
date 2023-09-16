package com.kopo.service;

import java.util.List;

import com.kopo.domain.Resort;

public interface ResortService {
	// create
		void makeReservation(Resort resort);

	// read
	List<Resort> getAllReserve();
		
	public Resort getOneByDateAndRoom(String resv_date, Integer room);
		
	// update
	void updateReservation(Resort resort);
		
	// delete
	public void deleteOneReservation(String resv_date, Integer room);
}