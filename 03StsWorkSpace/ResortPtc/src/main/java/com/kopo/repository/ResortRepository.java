package com.kopo.repository;

import java.util.List;

import com.kopo.domain.Resort;

public interface ResortRepository {
	void makeReservation(Resort resort);
	
	void updateReservation(Resort resort);
	
	List<Resort> getAllReserve();
}
