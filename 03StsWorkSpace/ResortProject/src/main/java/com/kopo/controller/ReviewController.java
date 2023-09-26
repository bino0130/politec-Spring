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
	public String showTest(@ModelAttribute("newSecondReply") Reply reply) {
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
			@ModelAttribute("secondReply") Reply secondReply) {
		Review oneReview = reviewService.getOneReviewById(review_id);
		int re_cnt = 0;
		if (replyService.getReCntById(review_id) == null) {
			re_cnt = 0;
			model.addAttribute("re_cnt", re_cnt);
		} else if (replyService.getReCntById(review_id) != null) {
			re_cnt = replyService.getReCntById(review_id) + 1; // re_cnt + 1
			model.addAttribute("re_cnt", re_cnt);
		}
		int viewCnt = oneReview.getView_cnt(); // 변수에 조회수 담기
		reviewService.updateViewCnt(review_id, viewCnt);
		List<Reply> replyList = replyService.getReplyList(review_id);
		
		model.addAttribute("oneReview", oneReview);
		model.addAttribute("replyList", replyList);
		return "review/review_view";
	}
	
	@PostMapping("/review_view")
	public String sendNewReply(@ModelAttribute("newReply") Reply reply, 
			@ModelAttribute("secondReply") Reply secondReply) {
		if(reply != null) {
			replyService.makeOneReply(reply);
		} else if (secondReply != null) {
			replyService.makeOneReply(secondReply);
		}
		return "redirect:/review_view?review_id=" + reply.getRoot_id();
	}
	
	// update
	@GetMapping("/admin/review_update")
	public String requestReviewUpdateForm(@RequestParam("review_id") int review_id, Model model) {
		Review updateReview = reviewService.getOneReviewById(review_id);
		model.addAttribute("updateReview", updateReview);
		return "review/review_update";
	}
	
	@PostMapping("/admin/review_update")
	public String sendReviewUpdate(@ModelAttribute("updateReview") Review review) {
		reviewService.updateReview(review);
		return "redirect:/review_list";
	}
	
	// delete
	@GetMapping("/admin/review_delete")
	public String requestDeleteReview(@RequestParam("review_id") int review_id) {
		reviewService.deleteReview(review_id);
		return "redirect:/review_list";
	}
	
	@GetMapping("/admin/reply_delete")
	public String requestDeleteReply(@RequestParam("reply_id") int reply_id) {
		replyService.deleteOneReply(reply_id);
		return "redirect:/review_list";
	}
}