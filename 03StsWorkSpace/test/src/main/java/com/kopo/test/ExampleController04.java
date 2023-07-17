package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class ExampleController04 {
	/*
	 * Model = �𵨿� ���� �����͸� ����
	 * 
	 * �� Ŭ����
	 * Model = ������ ������ ����
	 * ModelMap = ������ ������ ���� (Model�� �й��� ���ٹ��� �ٸ��� ��ǻ� ����� ���Ƽ� �������� �� �� �ƹ��ų� ���)
	 * ModelAndView = �� ���� & �� ������ ���
	 */
	
	@GetMapping("/exam04")
	public String requestMethod(Model model) {
		model.addAttribute("data", "Model ����");
		model.addAttribute("data2", "�� ��û : /home/exam04");
		return "webpage05";
	}
}