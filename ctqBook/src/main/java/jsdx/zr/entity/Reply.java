package jsdx.zr.entity;

/**
 * 
 * 讨论回复表 实体类
 * 
 *
 */
public class Reply {
	private int reply_id;
	private Reply oth_rep;
	private Debate debate;
	private User user;
	private int praise_num;
	private String rcontext;
	private String create_date;
	private int ustatus;//验证是否点赞，如果点赞了为1，为点赞为0

	public int getReply_id() {
		return reply_id;
	}

	public void setReply_id(int reply_id) {
		this.reply_id = reply_id;
	}

	public Reply getOth_rep() {
		return oth_rep;
	}

	public void setOth_rep(Reply oth_rep) {
		this.oth_rep = oth_rep;
	}

	public Debate getDebate() {
		return debate;
	}

	public void setDebate(Debate debate) {
		this.debate = debate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getPraise_num() {
		return praise_num;
	}

	public void setPraise_num(int praise_num) {
		this.praise_num = praise_num;
	}

	public String getRcontext() {
		return rcontext;
	}

	public void setRcontext(String rcontext) {
		this.rcontext = rcontext;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public int getUstatus() {
		return ustatus;
	}

	public void setUstatus(int ustatus) {
		this.ustatus = ustatus;
	}

}
