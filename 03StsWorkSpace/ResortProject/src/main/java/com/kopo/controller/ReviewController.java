package com.kopo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kopo.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	// read
//	@GetMapping("/notice_list")
//	public String showReviewList(Model model) {
//		List<Notice> noticeList = noticeService.getAllNotice();
//		model.addAttribute("noticeList", noticeList);
//		return "/notice/notice_list";
//	}
}