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
		System.out.println("Serivce 변경날짜 출력 : "+resort.getResv_date());
		System.out.println("Serivce 기존날짜 출력 : "+resort.getResv_date2());
	}

	@Override
	public void makeReservation(Resort resort) {
		resortRepository.makeReservation(resort);
	}

	@Override
	public List<Resort> getAllReserve() {
		return resortRepository.getAllReserve();
	}
}