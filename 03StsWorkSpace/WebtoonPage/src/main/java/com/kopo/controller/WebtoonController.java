package com.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kopo.domain.Webtoon;
import com.kopo.service.WebtoonService;

@Controller
public class WebtoonController {
	@Autowired
	private WebtoonService webtoonService;
	
	@RequestMapping(value = "/webtoons", method=RequestMethod.GET)
	public String requestWebtoonList (Model model) {
		List<Webtoon> list = webtoonService.getAllWebtoonList();
		model.addAttribute("webtoonList", list);
		return "webtoons";
	}
}