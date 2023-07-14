package com.kopo.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller // HomeController�� Controller���� �������ִ� Annotation @Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	// value�� ���, method�� get ���, post ��� �� �� 1. default���� get ���
	
	public String home(Locale locale, Model model) {
		
		// �α׸� ����, locale�� ����ϸ� ��ġ-������ ���� ����
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		// �����ؾ� �� ��Ҵ� model
		
		return "home";
		// home
		// <beans:property name="prefix" value="/WEB-INF/views/" />
		// prefix�� home �տ� ���̴� ���
		// <beans:property name="suffix" value=".jsp" />
		// suffix�� home �ڿ� ���̴� ���
		//    /WEB-INF/views/home.jsp
		
	}
	
}
