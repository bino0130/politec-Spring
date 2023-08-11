package com.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kopo.dto.ItemDTO;
import com.kopo.service.ItemService;

@Controller
public class ItemController {
	@Autowired
	private ItemService service;
	
	@GetMapping("list")
	public String printList(Model model) {
		List<ItemDTO> dl = service.selectItems();
		model.addAttribute("itemList", dl);
		return "showList";
	}
}