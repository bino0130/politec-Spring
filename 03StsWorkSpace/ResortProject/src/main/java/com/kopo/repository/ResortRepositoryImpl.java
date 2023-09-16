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
	
	private Resort resort = new Resort();
	private List<Resort> listOfReservations = new ArrayList<Resort>();

	@Override
	public void updateReservation(Resort resort) {
		mapper.updateReservation(resort);
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

	@Override
	public Resort getOneByDateAndRoom(String resv_date, Integer room) {
		resort = mapper.getOneByDateAndRoom(resv_date, room);
		return resort;
	}

	@Override
	public void deleteOneReservation(String resv_date, Integer room) {
		mapper.deleteOneReservation(resv_date, room);
	}

}