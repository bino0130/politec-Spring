package com.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.kopo.domain.Notice;
import com.kopo.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/notice_list")
	public String showNoticeList(Model model) {
		List<Notice> noticeList = noticeService.getAllNotice();
		model.addAttribute("noticeList", noticeList);
		return "/notice/notice_list";
	}
	
	@GetMapping("/notice_view")
	public String requestShowNoticeForm(@ModelAttribute("showNoticeForm") Notice notice
										, @RequestParam("notice_id") Integer notice_id, Model model) {
		model.addAttribute("notice_id", notice_id);
		return "/notice/notice_view";
	}
}