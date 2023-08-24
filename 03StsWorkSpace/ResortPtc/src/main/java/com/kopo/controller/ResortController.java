package com.kopo.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kopo.domain.ReservationStatus;
import com.kopo.domain.Resort;
import com.kopo.service.ResortService;

@Controller
public class ResortController {
	@Autowired
	private ResortService resortService;
	
	@GetMapping("/main")
	public String showMain() {
		return "main";
	}
	
	@GetMapping("/a_01")
	public String showA01() {
		return "a_01";
	}
	
	@GetMapping("/a_02")
	public String showA02() {
		return "a_02";
	}
	
	@GetMapping("/a_03")
	public String showA03() {
		return "a_03";
	}
	
	@GetMapping("/d_01")
	public String showD01(Model model) {
		List<Resort> resortList = resortService.getAllReserve();
		List<ReservationStatus> statusList = new ArrayList<ReservationStatus>();
		
		Resort resort = new Resort();
		ReservationStatus status = new ReservationStatus();
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
		
		for (int i = 0; i < 30; i++) {
			int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
			String date = dformat.format(cal.getTime());
			
			switch(dayOfWeek) {
			case 1 :
				status.setKorDayOfWeek("일");
				break;
			case 2 :
				status.setKorDayOfWeek("월");
				break;
			case 3 :
				status.setKorDayOfWeek("화");
				break;
			case 4 :
				status.setKorDayOfWeek("수");
				break;
			case 5 :
				status.setKorDayOfWeek("목");
				break;
			case 6 :
				status.setKorDayOfWeek("금");
				break;
			case 7 :
				status.setKorDayOfWeek("토");
				break;
			}
			
			for(int j = 0; j < resortList.size(); j++) {
				
			}
			
			cal.add(cal.DATE, + 1);
			statusList.add(status);
		}
		
		
		model.addAttribute("statusList", statusList);
		return "d_01";
	}
	
	@GetMapping("/d_02")
	public String requestAddReservationForm(@ModelAttribute("NewReservation") Resort resort) {
		return "d_02";
	}
	
	@PostMapping("/d_02")
	public String AddReservation(@ModelAttribute("NewReservation") Resort resort, 
			HttpServletRequest request, HttpSession session) {
		resortService.makeReservation(resort);
		return "redirect:/d_01";
	}
	
	@GetMapping("/d_03")
	public String requestUpdateReservationForm(@ModelAttribute("updateReservation") Resort resort) {
		return "d_03";
	}
	
	@PostMapping("/d_03")
	public String submitUpdateReservation(@ModelAttribute("updateReservation")Resort resort, 
			HttpServletRequest request, HttpSession session, Model model) {
		resortService.updateReservation(resort);
		System.out.println("Controller 변경날짜 출력 : "+resort.getResv_date());
		System.out.println("Controller 기존날짜 출력 : "+resort.getResv_date2());
		return "redirect:/d_01";
	}
}