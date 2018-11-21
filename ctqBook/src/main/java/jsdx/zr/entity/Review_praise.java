package jsdx.zr.entity;

/**
 * 
 * 书籍评论赞表
 * 
 */
public class Review_praise {
	private int praise_id;
	private Review review;
	private User user;
	private int status;
	private String create_date;

	public int getPraise_id() {
		return praise_id;
	}

	public void setPraise_id(int praise_id) {
		this.praise_id = praise_id;
	}

	public Review getReview() {
		return review;
	}

	public void setReview(Review review) {
		this.review = review;
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
