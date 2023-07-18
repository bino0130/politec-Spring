package com.kopo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller //WelcomeController에 Controller 어노테이션 지정
public class WelcomeController {
	@RequestMapping(value = "/home", method=RequestMethod.GET)
	public String welcome(Model model) {
		model.addAttribute("hello", "Welcome to WebtoonPage");
		model.addAttribute("strapline", "Welcome to Webtoon Mall!");
		
		return "welcome";
	}
}
