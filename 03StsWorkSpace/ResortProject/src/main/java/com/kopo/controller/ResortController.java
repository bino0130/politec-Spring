package com.kopo.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@GetMapping("/EconomySingle")
	public String showRoom01() {
		return "room/EconomySingle";
	}
	
	@GetMapping("/SingleDeluxe")
	public String showRoom02() {
		return "room/SingleDeluxe";
	}
	
	@GetMapping("/DoubleDeluxe")
	public String showRoom03() {
		return "room/DoubleDeluxe";
	}
	
	@GetMapping("/HoneyMoon-Suite")
	public String showRoom04() {
		return "room/HoneyMoon-Suite";
	}
	
	@GetMapping("/ReservationList")
	public String showD01(Model model) {
		List<Resort> resortList = resortService.getAllReserve();
		List<ReservationStatus> statusList = new ArrayList<ReservationStatus>();
		
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
		
		for(int i = 0; i < 30; i++) {
			String date = dformat.format(cal.getTime());
			
			ReservationStatus status = new ReservationStatus("예약가능", "예약가능", "예약가능", "예약가능");
			status.setStatusDate(date);
			
			statusList.add(status);
			cal.add(cal.DATE, + 1);
		}
		
		cal = Calendar.getInstance();
		for(ReservationStatus eachStatus : statusList) {
			int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
			
			for(Resort eachResort : resortList) {
				if(eachStatus.getStatusDate().equals(eachResort.getResv_date())) {
//					if(eachResort.getRoom() == 1) {
//						eachStatus.setRoom1(eachResort.getCustomer_name());
//					} else if (eachResort.getRoom() == 2) {
//						eachStatus.setRoom2(eachResort.getCustomer_name());
//					} else if (eachResort.getRoom() == 3) {
//						eachStatus.setRoom3(eachResort.getCustomer_name());
//					}
					if(eachResort.getRoom() == 1) {
						eachStatus.setRoom1("예약불가");
					} else if (eachResort.getRoom() == 2) {
						eachStatus.setRoom2("예약불가");
					} else if (eachResort.getRoom() == 3) {
						eachStatus.setRoom3("예약불가");
					} else if (eachResort.getRoom() == 4) {
						eachStatus.setRoom4("예약불가");
					}
				}
			}
			
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
		return "reservation/ReservationList";
	}
	
	@GetMapping("/ReservationPage_1")
	public String requestAddReservationForm(@ModelAttribute("NewReservation") Resort resort) {
		return "reservation/ReservationPage_1";
	}
	
	@PostMapping("/ReservationPage_1")
	public String AddReservation(@ModelAttribute("NewReservation") Resort resort, 
			HttpServletRequest request, HttpSession session, RedirectAttributes redirectAttr) {
		try {
			resortService.makeReservation(resort);
			return "redirect:/ReservationList";
		} catch (DuplicateKeyException e) {
			redirectAttr.addFlashAttribute("duplicateKey", true);
			redirectAttr.addFlashAttribute("resort", resort);
			return "redirect:/ReservationPage_1";
		}
	}
	
	@GetMapping("/ReservationPage_2")
	public String requestAddReservationFormWithInfo(@ModelAttribute("AnotherReservation") Resort resort,
			@RequestParam("date")String resv_date, @RequestParam("room") String room, Model model) {
		model.addAttribute("resv_date", resv_date);
		model.addAttribute("room", room);
		return "reservation/ReservationPage_2";
	}
	
	@PostMapping("/ReservationPage_2")
	public String AddReservationWithInfo(@ModelAttribute("AnotherReservation") Resort resort, 
			HttpServletRequest request, HttpSession session, Model model) {
			resortService.makeReservation(resort);
			return "redirect:/ReservationList";
	}
	
	@GetMapping("/admin/ReservationUpdatePage_1")
	public String requestUpdateReservationForm(Model model) {
		Resort updateReservation = new Resort();
		model.addAttribute("updateReservation", updateReservation);
		return "reservation/ReservationUpdatePage_1";
	}
	
	@PostMapping("/admin/ReservationUpdatePage_1") // HttpServletRequest request, HttpSession session 삭제
	public String submitUpdateReservation(@ModelAttribute("updateReservation")Resort resort, Model model) {
		try {
			resortService.updateReservation(resort);
			return "redirect:/ReservationList";
		} catch (DuplicateKeyException e) {
			model.addAttribute("duplicateKey", true);
			model.addAttribute("resort", resort);
			return "reservation/ReservationUpdatePage_1";
		}
	}
	
	@GetMapping("/admin/ReservationUpdatePage_2")
	public String requestReservationUpdateForm(@ModelAttribute("updateReservationInfo") Resort resort,
			@RequestParam("resv_date")String resv_date, @RequestParam("room") Integer room, Model model) {
		Resort updateReserveInfo = new Resort();
		updateReserveInfo = resortService.getOneByDateAndRoom(resv_date, room);
		model.addAttribute("updateReserveInfo", updateReserveInfo);
		return "reservation/ReservationUpdatePage_2";
	}
	
	@PostMapping("/admin/ReservationUpdatePage_2") // HttpServletRequest request, HttpSession session 삭제
	public String submitReservationUpdateForm(@ModelAttribute("updateReservationInfo")Resort resort, Model model) {
		try {
			resortService.updateReservation(resort);
			return "redirect:/ReservationList";
		} catch (DuplicateKeyException e) {
			model.addAttribute("duplicateKey", true);
			model.addAttribute("duplicateReservationInfo", resort);
			return "reservation/ReservationUpdatePage_2";
		}
	}
	
	@GetMapping("/admin/ReservationView")
	public String requestReservationViewForm(@RequestParam("date")String resv_date, @RequestParam("room") Integer room, Model model) {
		Resort oneResort = new Resort();
		oneResort = resortService.getOneByDateAndRoom(resv_date, room);
		model.addAttribute("oneResort", oneResort);
		return "reservation/ReservationView";
	}
	
	@GetMapping("/admin/ReservationDelete")
	public String DeleteReservation(@RequestParam("resv_date")String resv_date, @RequestParam("room") Integer room, Model model) {
		resortService.deleteOneReservation(resv_date, room);
		return "redirect:/ReservationList";
	}
	
	@GetMapping("howToCome")
	public String showRoute() {
		return "map/howToCome";
	}
}