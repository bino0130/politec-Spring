package com.kopo.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kopo.domain.Webtoon;
import com.kopo.service.WebtoonService;

@Controller
@RequestMapping("/webtoons")
public class WebtoonController {
	@Autowired
	private WebtoonService webtoonService;
	
	@GetMapping
	public String requestWebtoonList (Model model) {
		List<Webtoon> list = webtoonService.getAllWebtoonList();
		model.addAttribute("webtoonList", list);
		return "webtoons";
	}
	
	@GetMapping("/all")
	public ModelAndView requestWebtoon() {
		ModelAndView mav = new ModelAndView();
		List<Webtoon> list = webtoonService.getAllWebtoonList();
		mav.addObject("webtoonList", list);
		mav.setViewName("webtoons");
		
		return mav;
	}
	
	@GetMapping("/{genre}") // 경로변수 사용 (exam08 사용방법 2)
	public String requestWebtoonsByGenre(@PathVariable ("genre") String genre, Model model) {
		List<Webtoon> webtoonsByGenre = webtoonService.getWebtoonListByGenre(genre);
		model.addAttribute("webtoonList", webtoonsByGenre);
		return "webtoons";
	}
	
	@GetMapping("/filter/{webtoonFilter}")
	public String requestWebtoonsByFilter(
			@MatrixVariable(pathVar="webtoonFilter") Map<String, List<String>> filter, 
			Model model) {
		Set<Webtoon> webtoonsByFilter = webtoonService.getWebtoonListByFilter(filter);
		model.addAttribute("webtoonList", webtoonsByFilter);
		return "webtoons";
	}
	
	@GetMapping("/webtoon")
	public String requestWebtoonsByName(@RequestParam String name, Model model) {
		Webtoon webtoonByName = webtoonService.getWebtoonByName(name);
		model.addAttribute("webtoon", webtoonByName);
		
		return "webtoon";
	}
}