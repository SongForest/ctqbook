package jsdx.zr.entity;

/**
 * 
 * 推荐票表 实体类
 *
 */
public class Ticket {
	private int tic_id;
	private User user;
	private Novel novelid;
	private String create_date;
	private int status;
	private int ticnum;

	public int getTic_id() {
		return tic_id;
	}

	public void setTic_id(int tic_id) {
		this.tic_id = tic_id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Novel getNovelid() {
		return novelid;
	}

	public void setNovelid(Novel novelid) {
		this.novelid = novelid;
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

	public int getTicnum() {
		return ticnum;
	}

	public void setTicnum(int ticnum) {
		this.ticnum = ticnum;
	}

}
