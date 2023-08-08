package com.kopo.dao;

import java.lang.reflect.Member;
import java.util.List;

import com.kopo.dto.DTO;

public interface DAO {
	List<DTO> selectItem();
	
	int insertItems(Member mb);
	
	int insertItems();
	
	String getAllTheItems();
}