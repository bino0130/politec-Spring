package com.kopo.service;

import java.util.List;

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

	@Override
	public void makeReservation(Resort resort) {
		resortRepository.makeReservation(resort);
	}

	@Override
	public List<Resort> getAllReserve() {
		return resortRepository.getAllReserve();
	}

	@Override
	public Resort getOneByDateAndRoom(String resv_date, Integer room) {
		return resortRepository.getOneByDateAndRoom(resv_date, room);
	}

	@Override
	public void deleteOneReservation(String resv_date, Integer room) {
		resortRepository.deleteOneReservation(resv_date, room);
	}
}