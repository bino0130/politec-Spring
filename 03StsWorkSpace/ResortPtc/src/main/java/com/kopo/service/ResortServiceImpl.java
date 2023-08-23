package com.kopo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopo.domain.Resort;
import com.kopo.repository.ResortRepository;

@Service
public class ResortServiceImpl implements ResortService {
	@Autowired
	private ResortRepository resortRepository;

	@Override
	public void updateReservation(Resort resort) {
		resortRepository.updateReservation(resort);
	}
}