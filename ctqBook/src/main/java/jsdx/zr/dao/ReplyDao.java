package jsdx.zr.dao;

import java.util.List;

import jsdx.zr.entity.Reply;

public interface ReplyDao {
	public List<Reply> findReplyBydebateId(int debateid);

	public Reply findReplyById(int id);

	public int add(Reply reply);
}
