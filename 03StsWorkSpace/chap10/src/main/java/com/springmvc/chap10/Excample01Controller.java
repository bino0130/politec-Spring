package com.springmvc.chap10;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

@Controller
public class Excample01Controller {

	/*
	 * code : 응답에 사용되는 상태 코드
	 * reason : 응답에 사용되는 이유의 설명
	 * value : 코드에 대한 별칭
	 * BAD_REQUEST : 400 에러 발생시킴
	 * @ResponseStatus : 발생한 Exception을 HTTP 상태 코드로 매핑시켜 응답하는 Annotation
	 * @ExceptionHandler : 컨트롤러 안에 요청 처리 메서드에서 발생하는 오류나 예외를 직접 구체화하여
	 * 					   예외 처리를 위한 메서드에 선언하는 Annotation
	 * @ControllerAdvice : 여러 컨트롤러에서 발생하는 오류의 공통점을 묶어 예외 처리를 위한 클래스에 선언하는 Annotation
	 */
	@ResponseStatus(value=HttpStatus.BAD_REQUEST, reason="요청 실패했습니다.")
	@GetMapping("/exam01")
	public String requestMethod(Model model) {
		System.out.println("chap10_01 예제입니다"); // serealizable
		model.addAttribute("data", "@ResponseStatus 처리 예제입니다");
		
		return "webpage10_01";
	}
}