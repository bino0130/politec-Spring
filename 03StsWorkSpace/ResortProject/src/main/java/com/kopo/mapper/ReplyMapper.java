package com.kopo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.kopo.domain.Reply;

@Mapper
public interface ReplyMapper {
	// create
	public void makeOneReply(@Param("Reply") Reply reply);
	
	// read
	public List<Reply> getReplyList(@Param("root_id") int root_id);
	
	public Integer getReCntById(@Param("root_id") Integer root_id);
	
	// update
	public void updateOneReply(@Param("Reply") Reply reply);
	
	// delete
	public void deleteOneReply(@Param("reply_id") int reply_id);
}