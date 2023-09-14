package com.kopo.service;

import java.util.List;

import com.kopo.domain.Reply;

public interface ReplyService {
	// Reply 생성
	public void makeOneReply(Reply reply);
		
	// Reply 전체 출력
	public List<Reply> getReplyList(int root_id);
	
	// Reply 하나 select
	public Reply getOneReply(int reply_id);
		
	// Reply 업데이트
	public void updateOneReply(Reply reply);
		
	// Reply 삭제
	public void deleteOneReply(int reply_id);
}