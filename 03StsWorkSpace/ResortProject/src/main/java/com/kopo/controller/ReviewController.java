package com.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kopo.domain.Reply;
import com.kopo.domain.Review;
import com.kopo.service.ReplyService;
import com.kopo.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ReplyService replyService;
	
	@GetMapping("/test")
	public String showTest() {
		return "test";
	}
	
	// create
	@GetMapping("/review_insert")
	public String requestReviewInsertForm(@ModelAttribute("insertReviewForm") Review review) {
		return "review/review_insert";
	}
	
	@PostMapping("/review_insert")
	public String reviewInsert(@ModelAttribute("insertReviewForm") Review review) {
		reviewService.makeReview(review);
		return "redirect:/review_list";
	}
	
	// read
	@GetMapping("/review_list")
	public String showReviewList(Model model) {
		List<Review> reviewList = reviewService.getAllReview();
		model.addAttribute("reviewList", reviewList);
		return "review/review_list";
	}
	
	@GetMapping("/review_view")
	public String requestShowReviewForm(@RequestParam("review_id") int review_id, 
			@ModelAttribute("newReply") Reply reply, Model model,
			@ModelAttribute("newSecondReply") Reply secondReply) {
		Review oneReview = reviewService.getOneReviewById(review_id);
//		Reply oneReply = replyService.getOneReply(review_id);
		int viewCnt = oneReview.getView_cnt(); // 변수에 조회수 담기
//		int re_level = oneReply.getRe_level();
//		int re_cnt = oneReply.getRe_cnt();
		reviewService.updateViewCnt(review_id, viewCnt);
		List<Reply> replyList = replyService.getReplyList(review_id);
		
		model.addAttribute("oneReview", oneReview);
		model.addAttribute("replyList", replyList);
//		model.addAttribute("re_level", re_level);
//		model.addAttribute("re_cnt", re_cnt);
		return "review/review_view";
	}
	
	@PostMapping("/review_view")
	public String sendNewReply(@ModelAttribute("newReply") Reply reply) {
		replyService.makeOneReply(reply);
		return "redirect:/review_view?review_id=" + reply.getRoot_id();
	}
	
	// update
	@GetMapping("/review_update")
	public String requestReviewUpdateForm(@RequestParam("review_id") int review_id, Model model) {
		Review updateReview = reviewService.getOneReviewById(review_id);
		model.addAttribute("updateReview", updateReview);
		return "review/review_update";
	}
	
	@PostMapping("review_update")
	public String sendReviewUpdate(@ModelAttribute("updateReview") Review review) {
		reviewService.updateReview(review);
		return "redirect:/review_list";
	}
	
	// delete
	@GetMapping("/review_delete")
	public String requestDeleteReview(@RequestParam("review_id") int review_id) {
		reviewService.deleteReview(review_id);
		return "redirect:/review_list";
	}
}