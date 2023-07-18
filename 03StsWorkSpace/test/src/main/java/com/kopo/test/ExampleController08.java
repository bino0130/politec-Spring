package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class ExampleController08 {
	/*
	 * 경로 변수 - @PathVariable
	 * 웹 요청 URL에 포함된 파라미터 값을 전달받을 수 있음
	 * {} 중괄호를 활용해서 URL에 포함된 요청 조건 값을 전달받음
	 * 
	 * 사용 방법 1 (들어온 값 그대로 사용)
	 * @RequestMapping("경로 변수")
	 * public string MethodName(@PathVariable 경로변수, ..) {
	 * 
	 * }
	 * 
	 * 사용 방법 2 (들어온 값의 이름을 변경해서 사용0
	 * @RequestMapping("경로 변수")
	 * public string MethodName(@PathVariable (경로변수) 매개변수, ..) {
	 * 
	 * }
	 */
	
	@GetMapping("/exam08/{category}/publisher/{publisher}")
	public String requestMethod(@PathVariable String category, 
								@PathVariable String publisher, 
								Model model) {
		System.out.println("분류 : " + category);
		System.out.println("출판사 : " + publisher);
		model.addAttribute("data", "분류 : " + category + "<br>" +
							"출판사 : " + publisher);
//		model.addAttribute("data", "분류 : " + category);
//		model.addAttribute("data2", "출판사 : " + publisher);
		
		return "webpage06";
	}
}