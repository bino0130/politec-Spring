package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ExampleController17 {
	/*
	 * @InitBinder = 데이터 커스터마이징
	 *
	 * @InitBinder
	 * public void 메서드이름(WebDataBinder binder, ...) {}
	 * 
	 * @InitBinder("커맨드 객체 이름)
	 * public void 메서드이름(WebDataBinder binder, ...) {}
	 * 
	 * 폼 파라미터에서 데이터를 커스텀 바인딩할 때
	 * setAllowedFields() 메서드 활용
	 * public void setAllowedField("param1", "param2", ...) : 허용
	 * public void setDisallowedField("param1", "param2", ...) : 불허
	 */
	
	// 
	@GetMapping("/exam17") // 필드 작성 화면으로 이동
	public String showForm(Model model) {
		model.addAttribute("member", new Member());
		return "exam14_01";
	}
	
	@PostMapping("/exam17") // 작성된 필드 출력 화면으로 이동
	public String setTitle(@ModelAttribute Member member, Model model) {
		model.addAttribute("member", member);
		return "exam14_02";
	}
	
	@InitBinder
	public void setsubTitle(WebDataBinder binder) { 
		binder.setAllowedFields("id", "password", "city", "sex"); // 취미는 뺀다
		binder.setDisallowedFields("city"); // city도 뺀다
	}
}