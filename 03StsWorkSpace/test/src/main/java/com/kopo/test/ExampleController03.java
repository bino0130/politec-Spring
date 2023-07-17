package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class ExampleController03 {
	/*
	 * @RequestMapping의 단순화
	 * 스프링 4.3버전부터 지원
	 * GET 방식인 경우 @GetMapping 어노테이션 활용 가능(읽을 때 GET requestMapping이라고 읽음)
	 * @GetMapping		- 요청이 get인 경우
	 * @PostMapping		- 요청이 post
	 * @PutMapping		- 요청이 put
	 * @DeleteMapping	- 요청이 delete
	 * @PatchMapping	- 요청이 patch
	 */
	
	@GetMapping("/exam03")
	public void requestMethod() {
		System.out.println("@GetMapping 매핑 예제");
		System.out.println("웹 요청은 /exam03");
	}
}