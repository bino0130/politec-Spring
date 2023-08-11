package com.kopo.dao;

import java.lang.reflect.Member;
import java.util.List;

import com.kopo.dto.ItemDTO;

public interface ItemDAO {
	List<ItemDTO> selectItem();
	
	int insertItems(Member mb);
	
	int insertItems();
	
	String getAllTheItems();
}