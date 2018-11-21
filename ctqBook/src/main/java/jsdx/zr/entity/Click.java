package jsdx.zr.entity;

/**
 * 
 * 点击量表 实体类
 *
 */
public class Click {
	private int click_id;
	private User user;
	private Novel novel;
	private String create_date;
	private int status;

	public int getClick_id() {
		return click_id;
	}

	public void setClick_id(int click_id) {
		this.click_id = click_id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Novel getNovel() {
		return novel;
	}

	public void setNovel(Novel novel) {
		this.novel = novel;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
