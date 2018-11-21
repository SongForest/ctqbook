package jsdx.zr.entity;

/**
 * 
 * 书帖表 实体类
 *
 */
public class Note {
	private int note_id;
	private Novel novel;
	private String title;
	private int debateCount;
	private String create_date;

	public int getNote_id() {
		return note_id;
	}

	public void setNote_id(int note_id) {
		this.note_id = note_id;
	}

	public Novel getNovel() {
		return novel;
	}

	public void setNovel(Novel novel) {
		this.novel = novel;
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getDebateCount() {
		return debateCount;
	}

	public void setDebateCount(int debateCount) {
		this.debateCount = debateCount;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

}
