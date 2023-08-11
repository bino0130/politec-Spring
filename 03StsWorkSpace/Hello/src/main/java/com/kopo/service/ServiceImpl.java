package com.kopo.service;

import java.lang.reflect.Member;
import java.util.List;
import org.springframework.stereotype.Service;
import javax.inject.Inject;

import com.kopo.dao.DAOImpl;
import com.kopo.dto.ItemDTO;

@Service
public class ServiceImpl implements ItemService {
	@Inject
	private DAOImpl dao;

	@Override
	public List<ItemDTO> selectItems() {
		return dao.selectItem();
	}

	@Override
	public int insertItems(Member mb) {
		return dao.insertItems(mb);
	}

	@Override
	public int insertItems() {
		return dao.insertItems();
	}

	@Override
	public String getAllTheItems() {
		List<ItemDTO> ld = dao.selectItem();
		int lengthOfList = ld.size();
		String result = "";
		for (int i = 0; i < lengthOfList; i++) {
			result = result + ld.get(i) + " ";
		}
		return result;
	}

}