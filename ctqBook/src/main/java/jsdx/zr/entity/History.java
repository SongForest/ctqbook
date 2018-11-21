package jsdx.zr.entity;

/**
 * 
 * 历史纪录表 实体类
 *
 */
public class History {
	private int his_id;
	private User user;
	private Novel novel;
	private SectionInfo section;
	private String create_date;
	private int status;

	public int getHis_id() {
		return his_id;
	}

	public void setHis_id(int his_id) {
		this.his_id = his_id;
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

	public SectionInfo getSection() {
		return section;
	}

	public void setSection(SectionInfo section) {
		this.section = section;
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
