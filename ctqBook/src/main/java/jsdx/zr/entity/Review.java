package jsdx.zr.entity;

/**
 * 
 * 书籍评论表 实体类
 *
 */
public class Review {
	private int review_id;
	private Novel novel;
	private User user_id;
	private int star_level;
	private String context;
	private int praise_num;
	private String create_date;
	private int ustatus;//验证是否点赞，如果点赞了为1，为点赞为0

	public int getReview_id() {
		return review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}

	public Novel getNovel() {
		return novel;
	}

	public void setNovel(Novel novel) {
		this.novel = novel;
	}

	public User getUser_id() {
		return user_id;
	}

	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}

	public int getStar_level() {
		return star_level;
	}

	public void setStar_level(int star_level) {
		this.star_level = star_level;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public int getPraise_num() {
		return praise_num;
	}

	public void setPraise_num(int praise_num) {
		this.praise_num = praise_num;
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

	@Override
	public String toString() {
		return "Review [review_id=" + review_id + ", novel=" + novel + ", user_id=" + user_id + ", star_level="
				+ star_level + ", context=" + context + ", praise_num=" + praise_num + ", create_date=" + create_date
				+ ", ustatus=" + ustatus + "]";
	}

}
