package jsdx.zr.entity;

/**
 * 
 * 发件箱表 实体类
 *
 */
public class Outbox {
	private int send_id;
	private User outbox_sender;
	private String outbox_title;
	private String outbox_content;
	private int send_state;
	private String create_date;
	private String last_date;
	private int status;

	public int getSend_id() {
		return send_id;
	}

	public void setSend_id(int send_id) {
		this.send_id = send_id;
	}

	public User getOutbox_sender() {
		return outbox_sender;
	}

	public void setOutbox_sender(User outbox_sender) {
		this.outbox_sender = outbox_sender;
	}

	public String getOutbox_title() {
		return outbox_title;
	}

	public void setOutbox_title(String outbox_title) {
		this.outbox_title = outbox_title;
	}

	public String getOutbox_content() {
		return outbox_content;
	}

	public void setOutbox_content(String outbox_content) {
		this.outbox_content = outbox_content;
	}

	public int getSend_state() {
		return send_state;
	}

	public void setSend_state(int send_state) {
		this.send_state = send_state;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

	public String getLast_date() {
		return last_date;
	}

	public void setLast_date(String last_date) {
		this.last_date = last_date;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
