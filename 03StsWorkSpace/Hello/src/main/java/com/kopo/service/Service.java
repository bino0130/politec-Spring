package com.kopo.service;

import java.lang.reflect.Member;
import java.util.List;

import com.kopo.dto.DTO;

public interface Service {
	public List<DTO> selectItems();
	
	public int insertItems(Member mb);
	
	public int insertItems();
	
	public String getAllTheItems();
}