package jsdx.zr.entity;

import java.util.List;

/**
 * 
 * 书帖讨论表 实体类
 *
 */
public class Debate {
	private int debate_id;
	private Note note;
	private User user;
	private String ncontext;
	private int praise_num;
	private int status;
	private String create_date;
	private int ustatus;//验证是否点赞，如果点赞了为1，为点赞为0
	private List<Reply> replys;

	public int getDebate_id() {
		return debate_id;
	}

	public void setDebate_id(int debate_id) {
		this.debate_id = debate_id;
	}

	public Note getNote() {
		return note;
	}

	public void setNote(Note note) {
		this.note = note;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getNcontext() {
		return ncontext;
	}

	public void setNcontext(String ncontext) {
		this.ncontext = ncontext;
	}

	public int getPraise_num() {
		return praise_num;
	}

	public void setPraise_num(int praise_num) {
		this.praise_num = praise_num;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public List<Reply> getReplys() {
		return replys;
	}

	public void setReplys(List<Reply> replys) {
		this.replys = replys;
	}

	public int getUstatus() {
		return ustatus;
	}

	public void setUstatus(int ustatus) {
		this.ustatus = ustatus;
	}

}
