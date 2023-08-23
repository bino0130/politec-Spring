package com.kopo.repository;

import com.kopo.domain.Resort;

public interface ResortRepository {
	void makeReservation(Resort resort);
	
	void updateReservation(Resort resort);
}
