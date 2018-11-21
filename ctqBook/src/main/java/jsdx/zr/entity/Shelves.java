package jsdx.zr.entity;
/**
 * 
 * 书架表  实体
 *
 */
public class Shelves {
	private int shelvesid;
	private User user;
	private Novel novel;
	private History history;
	private String create_date;
	public int getShelvesid() {
		return shelvesid;
	}
	public void setShelvesid(int shelvesid) {
		this.shelvesid = shelvesid;
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
	public History getHistory() {
		return history;
	}
	public void setHistory(History history) {
		this.history = history;
	}

}
