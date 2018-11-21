package jsdx.zr.entity;
/**
 * 
 * 回复赞表  实体类
 *
 */
public class Reply_praise {
	private int praise_id;
	private Reply reply;
	private User user;
	private int status;
	private String create_date;
	public int getPraise_id() {
		return praise_id;
	}
	public void setPraise_id(int praise_id) {
		this.praise_id = praise_id;
	}
	public Reply getReply() {
		return reply;
	}
	public void setReply(Reply reply) {
		this.reply = reply;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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

}
