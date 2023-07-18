package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/home")
public class ExampleController06 {
	/*
	 * Model = �𵨿� ���� �����͸� ����
	 * 
	 * ModelAndView = �� ���� & �� ������ ����
	 * 
	 * void setViewName(String viewName)
	 * ���� : ModelAndView �� �̸��� ����
	 * �Ű����� : (viewName)
	 * viewName : �� �̸�
	 * 
	 * Model 				vs ModelAndView
	 * �� : addAttribute()		addObject()
	 * ���̸� : X(return���� ����)	setViewName()
	 */
	
	@GetMapping("/exam06")
	public ModelAndView requestMethod(ModelMap model) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", "ModelAndView ��ü");
		mav.addObject("data2", "�� ��û�� /home/exam06");

		// ModelAndView���� ����ϰ��� �ϴ� View(jsp)�� ���� �� �ִ�.
		mav.setViewName("webpage05");
		
		return mav;
	}
}