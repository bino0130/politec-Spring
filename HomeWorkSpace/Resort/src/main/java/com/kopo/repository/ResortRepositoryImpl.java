package com.kopo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kopo.domain.Resort;
import com.kopo.mapper.ResortMapper;

@Repository
public class ResortRepositoryImpl implements ResortRepository {
	@Autowired
	private ResortMapper mapper;
	
	private List<Resort> listOfReservations = new ArrayList<Resort>();

	@Override
	public void updateReservation(Resort resort) {
		mapper.updateReservation(resort);
		System.out.println("Repo 변경날짜 출력 : "+resort.getResv_date());
		System.out.println("Repo 기존날짜 출력 : "+resort.getResv_date2());
	}

	@Override
	public void makeReservation(Resort resort) {
		mapper.makeReservation(resort);
	}

	@Override
	public List<Resort> getAllReserve() {
		listOfReservations = mapper.getAllReserve();
		return listOfReservations;
	}

}