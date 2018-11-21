package jsdx.zr.entity;

/**
 * 
 * 收件箱表 实体类
 *
 */
public class Inbox {
	private int receive_id;
	private User inbox_sender;
	private User inbox_receiver;
	private String inbox_title;
	private String inbox_content;
	private int receive_state;
	private String create_date;
	private String last_date;
	private int status;

	public int getReceive_id() {
		return receive_id;
	}

	public void setReceive_id(int receive_id) {
		this.receive_id = receive_id;
	}

	public User getInbox_sender() {
		return inbox_sender;
	}

	public void setInbox_sender(User inbox_sender) {
		this.inbox_sender = inbox_sender;
	}

	public User getInbox_receiver() {
		return inbox_receiver;
	}

	public void setInbox_receiver(User inbox_receiver) {
		this.inbox_receiver = inbox_receiver;
	}

	public String getInbox_title() {
		return inbox_title;
	}

	public void setInbox_title(String inbox_title) {
		this.inbox_title = inbox_title;
	}

	public String getInbox_content() {
		return inbox_content;
	}

	public void setInbox_content(String inbox_content) {
		this.inbox_content = inbox_content;
	}

	public int getReceive_state() {
		return receive_state;
	}

	public void setReceive_state(int receive_state) {
		this.receive_state = receive_state;
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
