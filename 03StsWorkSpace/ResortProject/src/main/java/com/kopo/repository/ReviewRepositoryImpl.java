package com.kopo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kopo.domain.Review;
import com.kopo.mapper.ReviewMapper;

@Repository
public class ReviewRepositoryImpl implements ReviewRepository {
	@Autowired
	private ReviewMapper mapper;
	
	private List<Review> listOfReview = new ArrayList<Review>();
	
	@Override
	public List<Review> getAllReview() {
		listOfReview = mapper.getAllReview();
		return listOfReview;
	}

	@Override
	public void makeReview(Review review) {
		mapper.makeReview(review);
	}

	@Override
	public Review getOneReviewById(int review_id) {
		return mapper.getOneReviewById(review_id);
	}

	@Override
	public void updateViewCnt(int review_id, int view_cnt) {
		mapper.updateReviewViewCnt(review_id, view_cnt);
	}

	@Override
	public void deleteReview(int review_id) {
		mapper.deleteOneReview(review_id);
	}

	@Override
	public void updateReview(Review review) {
		mapper.updateReview(review);
	}
}