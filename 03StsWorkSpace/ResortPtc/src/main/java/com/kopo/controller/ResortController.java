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
import org.springframework.web.bind.annotation.RequestParam;

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
		List<ReservationStatus> sendStatusList = new ArrayList<ReservationStatus>();
		
		Resort resort = new Resort();
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
		
		for(int i = 0; i < 30; i++) {
			int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
			String date = dformat.format(cal.getTime());
			
			ReservationStatus status = new ReservationStatus("예약가능", "예약가능", "예약가능");
			status.setStatusDate(date);
			
			statusList.add(status);
			cal.add(cal.DATE, + 1);
		}
		
		cal = Calendar.getInstance();
		for(ReservationStatus eachStatus : statusList) {
			int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
			
			for(Resort eachResort : resortList) {
				if(eachStatus.getStatusDate().equals(eachResort.getResv_date().substring(0, 10))) {
					if(eachResort.getRoom() == 1) {
						eachStatus.setRoom1(eachResort.getCustomer_name());
					} else if (eachResort.getRoom() == 2) {
						eachStatus.setRoom2(eachResort.getCustomer_name());
					} else if (eachResort.getRoom() == 3) {
						eachStatus.setRoom3(eachResort.getCustomer_name());
					}
				}
			}
			
			System.out.println(dayOfWeek);
			switch(dayOfWeek) {
			case 1 :
				eachStatus.setKorDayOfWeek("일");
				break;
			case 2 :
				eachStatus.setKorDayOfWeek("월");
				break;
			case 3 :
				eachStatus.setKorDayOfWeek("화");
				break;
			case 4 :
				eachStatus.setKorDayOfWeek("수");
				break;
			case 5 :
				eachStatus.setKorDayOfWeek("목");
				break;
			case 6 :
				eachStatus.setKorDayOfWeek("금");
				break;
			case 7 :
				eachStatus.setKorDayOfWeek("토");
				break;
			}
			
			cal.add(cal.DATE, + 1);
		}
		
		model.addAttribute("statusList", statusList);
		System.out.println("statusList 전달 : " + statusList);
		return "d_01";
	}
	
	@GetMapping("/d_02_1")
	public String requestAddReservationForm(@ModelAttribute("NewReservation") Resort resort) {
		return "d_02_1";
	}
	
	@PostMapping("/d_02_1")
	public String AddReservation(@ModelAttribute("NewReservation") Resort resort, 
			HttpServletRequest request, HttpSession session) {
		resortService.makeReservation(resort);
		return "redirect:/d_01";
	}
	
	@GetMapping("/d_02_2")
	public String requestAddReservationFormWithInfo(@ModelAttribute("NewReservation") Resort resort,
			@RequestParam("date")String date, @RequestParam("room") String room, Model model) {
		model.addAttribute("date", date);
		model.addAttribute("room", room);
		return "d_02_2";
	}
	
	@PostMapping("/d_02_2")
	public String AddReservationWithInfo(@ModelAttribute("NewReservation") Resort resort, 
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
		return "redirect:/d_01";
	}
}