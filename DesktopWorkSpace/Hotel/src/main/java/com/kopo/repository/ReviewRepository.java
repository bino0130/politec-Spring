package com.kopo.repository;

import java.util.List;

import com.kopo.domain.Review;

public interface ReviewRepository {
	// Review 생성
	public void makeReview(Review review);
	
	// Review 전체 출력
	public List<Review> getAllReview();
	
	// Review 하나 출력
	public Review getOneReviewById(int review_id);
	
	// Review 조회수 업데이트
	public void updateViewCnt(int review_id, int view_cnt);
	
	// Review 업데이트
	public void updateReview(Review review);
	
	// Review 삭제
	public void deleteReview(int review_id);
}