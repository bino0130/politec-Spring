package com.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kopo.domain.Notice;
import com.kopo.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("/top")
	public String top(){
		return "top";
	}

	// read
	@GetMapping("/notice_list")
	public String showNoticeList(Model model) {
		List<Notice> noticeList = noticeService.getAllNotice();
		model.addAttribute("noticeList", noticeList);
		return "/notice/notice_list";
	}
	
	@PostMapping("/notice_list")
	public String showPostNoticeList(Model model) {
		List<Notice> noticeList = noticeService.getAllNotice();
		model.addAttribute("noticeList", noticeList);
		return "/notice/notice_list";
	}
	
	@GetMapping("/notice_view")
	public String requestShowNoticeForm(@RequestParam("notice_id") int notice_id, Model model) {
		Notice oneNotice = noticeService.getOneById(notice_id);
		model.addAttribute("oneNotice", oneNotice);
		return "/notice/notice_view";
	}
	
	// create
	@GetMapping("/notice_insert")
	public String requestNoticeInsertForm(@ModelAttribute("insertNoticeForm") Notice notice) {
		return "/notice/notice_insert";
	}
	
	@PostMapping("/notice_insert")
	public String noticeInsert(@ModelAttribute("insertNoticeForm") Notice notice) {
			noticeService.makeNotice(notice);
		return "redirect:/notice_list";
	}
	
	// update
	@GetMapping("/notice_update")
	public String requestNoticeUpdateForm(@RequestParam("notice_id") int notice_id, Model model) {
		Notice updateNotice = noticeService.getOneById(notice_id);
		model.addAttribute("updateNotice", updateNotice);
		return "/notice/notice_update";
	}
	
	@PostMapping("/notice_update")
	public String sendNoticeUpdate(@ModelAttribute("updateNotice") Notice updateNotice) {
		noticeService.updateNotice(updateNotice);
		return "redirect:/notice_list";
	}
	
	// delete
	@GetMapping("/notice_delete")
	public String requestDeleteNotice(@RequestParam("notice_id") int notice_id) {
		noticeService.deleteNotice(notice_id);
		return "redirect:/notice_list";
	}
}