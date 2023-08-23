package com.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kopo.domain.Resort;
import com.kopo.service.ResortService;

@Controller
public class ResortController {
	@Autowired
	private ResortService resortService;
	
	@GetMapping("/main")
	public String showMain() {
		return "main";
	}
	
	@GetMapping("/a_01")
	public String showA01() {
		return "a_01";
	}
	
	@GetMapping("/a_02")
	public String showA02() {
		return "a_02";
	}
	
	@GetMapping("/a_03")
	public String showA03() {
		return "a_03";
	}
	
	@GetMapping("/d_01")
	public String showD01(Model model) {
		
		return "d_01";
	}
	
//	@GetMapping("/d_02")
//	public String showD02() {
//		return "d_02";
//	}
	
	@GetMapping("/d_03")
	public String requestAddReservationForm(@ModelAttribute("NewReservation") Resort resort) {
		return "d_03";
	}
	
	@PostMapping("/d_03")
	public String submitAddReservation(@ModelAttribute("NewReservation")Resort resort, 
			HttpServletRequest request, HttpSession session) {
		resortService.updateReservation(resort);
		return "redirect:/d_01";
	}
}