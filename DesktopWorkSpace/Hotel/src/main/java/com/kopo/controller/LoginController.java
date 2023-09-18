package com.kopo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	// Login
	@GetMapping("/login")
	public String login() {
		return "login/login_page";
	}
	
	// Login 성공
	@GetMapping("/loginSuccess")
	public String loginSuccess(HttpServletRequest request) {
		String backURL = request.getHeader("referer");

		return "redirect:" + backURL;
	}
	
	
	// LogOut 성공
	@GetMapping("/logoutAsk")
	public String requestLogOut(HttpServletRequest request) {
		String backURL = request.getHeader("referer");

		return "redirect:" + backURL;
	}
}