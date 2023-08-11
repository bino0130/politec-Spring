package com.kopo.service;

import java.lang.reflect.Member;
import java.util.List;

import com.kopo.dto.ItemDTO;

public interface ItemService {
	public List<ItemDTO> selectItems();
	
	public int insertItems(Member mb);
	
	public int insertItems();
	
	public String getAllTheItems();
}