package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class ExampleController04 {
	/*
	 * Model = 모델에 응답 데이터를 가짐
	 * 
	 * 모델 클래스
	 * Model = 데이터 정보를 저장
	 * ModelMap = 데이터 정보를 저장 (Model과 학문적 접근법만 다르지 사실상 기능은 같아서 현업에선 둘 중 아무거나 사용)
	 * ModelAndView = 모델 정보 & 뷰 정보를 출력
	 */
	
	@GetMapping("/exam04")
	public String requestMethod(Model model) {
		model.addAttribute("data", "Model 예제");
		model.addAttribute("data2", "웹 요청 : /home/exam04");
		return "webpage05";
	}
}