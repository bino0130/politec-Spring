package com.kopo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kopo.domain.Reply;
import com.kopo.repository.ReplyRepository;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyRepository replyRepository;

	@Override
	public void makeOneReply(Reply reply) {
		replyRepository.makeOneReply(reply);
	}

	@Override
	public List<Reply> getReplyList(int root_id) {
		return replyRepository.getReplyList(root_id);
	}

	@Override
	public void updateOneReply(Reply reply) {
		replyRepository.updateOneReply(reply);
	}

	@Override
	public void deleteOneReply(int reply_id) {
		replyRepository.deleteOneReply(reply_id);
	}

	@Override
	public Integer getReCntById(Integer root_id) {
		return replyRepository.getReCntById(root_id);
	}
}