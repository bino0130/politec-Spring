package com.kopo.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kopo.domain.Resort;
import com.kopo.mapper.ResortMapper;

@Repository
public class ResortRepositoryImpl implements ResortRepository {
	@Autowired
	private ResortMapper mapper;

	@Override
	public void updateReservation(Resort resort) {
		mapper.updateReservation(resort);
	}

}