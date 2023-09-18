package com.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopo.domain.Review;
import com.kopo.repository.ReviewRepository;

@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	private ReviewRepository reviewRepository;
	
	@Override
	public List<Review> getAllReview() {
		return reviewRepository.getAllReview();
	}

	@Override
	public void makeReview(Review review) {
		reviewRepository.makeReview(review);
	}

	@Override
	public Review getOneReviewById(int review_id) {
		return reviewRepository.getOneReviewById(review_id);
	}

	@Override
	public void updateViewCnt(int review_id, int view_cnt) {
		reviewRepository.updateViewCnt(review_id, view_cnt);
	}

	@Override
	public void deleteReview(int review_id) {
		reviewRepository.deleteReview(review_id);
	}

	@Override
	public void updateReview(Review review) {
		reviewRepository.updateReview(review);
	}
}