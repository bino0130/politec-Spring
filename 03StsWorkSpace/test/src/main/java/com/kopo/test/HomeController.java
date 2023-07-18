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
@Controller // HomeController가 Controller임을 지정해주는 Annotation @Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	// value는 경로, method는 get 방식, post 방식 중 택 1. default값은 get 방식
	
	public String home(Locale locale, Model model) {
		
		// 로그를 남김, locale을 사용하면 위치-지역에 대해 나옴
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		// 저장해야 할 장소는 model
		
		return "home";
		// home
		// <beans:property name="prefix" value="/WEB-INF/views/" />
		// prefix는 home 앞에 붙이는 경로
		// <beans:property name="suffix" value=".jsp" />
		// suffix는 home 뒤에 붙이는 경로
		//    /WEB-INF/views/home.jsp
		
	}
	
}