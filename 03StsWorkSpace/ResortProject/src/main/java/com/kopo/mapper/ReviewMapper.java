package com.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kopo.domain.Review;

public interface ReviewMapper {
	// create
	public void makeReview(@Param("Review") Review review);
	
	// read
	public List<Review> getAllReview();
	
	public Review getOneReviewById(@Param("review_id") int review_id);
	
	// update
	public void updateReview(@Param("Review") Review review);
	
	public void updateReviewViewCnt(@Param("review_id") int review_id, @Param("view_cnt") int view_cnt);
	
	// delete
	public void deleteOneReview(@Param("review_id") int review_id);
}