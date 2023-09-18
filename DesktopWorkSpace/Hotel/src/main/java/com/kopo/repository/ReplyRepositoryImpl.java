package com.kopo.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kopo.domain.Reply;
import com.kopo.mapper.ReplyMapper;

@Repository
public class ReplyRepositoryImpl implements ReplyRepository {
	@Autowired
	private ReplyMapper mapper;
	
	private List<Reply> listOfReply = new ArrayList<Reply>();
	private Reply reply = new Reply();

	@Override
	public void makeOneReply(Reply reply) {
		mapper.makeOneReply(reply);
	}

	@Override
	public List<Reply> getReplyList(int root_id) {
		listOfReply = mapper.getReplyList(root_id);
		return listOfReply;
	}

	@Override
	public void updateOneReply(Reply reply) {
		mapper.updateOneReply(reply);
	}

	@Override
	public void deleteOneReply(int reply_id) {
		mapper.deleteOneReply(reply_id);
	}

	@Override
	public Reply getOneReply(int reply_id) {
		reply = mapper.getOneReply(reply_id);
		return reply;
	}
}