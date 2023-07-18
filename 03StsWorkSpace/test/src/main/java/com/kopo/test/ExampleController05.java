package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class ExampleController05 {
	/*
	 * Model = 모델에 응답 데이터를 가짐
	 * 
	 * 모델 클래스
	 * Model = 데이터 정보를 저장 -> 인터페이스
	 * 역할 : 제공된 이름으로 제공된 속성을 등록
	 * 매개변수 : (attributeName, attributeValue)
	 * attributeName : 속성의 이름 -> null 불허
	 * attributeValue : 속성의 값 -> null 허용
	 * 
	 * ModelMap = 데이터 정보를 저장 -> 구현체
	 * Model vs ModelMap : 차이가 있으나, 시스템에서 처리되기에 결과적으로 어떤걸 사용해도 상관없음
	 * 역할 : 제공된 이름으로 제공된 속성을 등록
	 * 매개변수 : (attributeName, attributeValue)
	 * attributeName : 속성의 이름 -> null 불허
	 * attributeValue : 속성의 값 -> null 허용
	 * 
	 * ModelAndView = 모델 정보 & 뷰 정보를 저장
	 */
	
	@GetMapping("/exam05")
	public String requestMethod(ModelMap model) {
		model.addAttribute("data", "ModelMap 예제");
		model.addAttribute("data2", "웹 요청 : /home/exam05");
		return "webpage05";
	}
}