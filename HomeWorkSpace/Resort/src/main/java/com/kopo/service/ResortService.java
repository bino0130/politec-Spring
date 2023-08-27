package com.kopo.service;

import java.util.List;

import com.kopo.domain.Resort;

public interface ResortService {
	void updateReservation(Resort resort);
	
	void makeReservation(Resort resort);
	
	List<Resort> getAllReserve();
}