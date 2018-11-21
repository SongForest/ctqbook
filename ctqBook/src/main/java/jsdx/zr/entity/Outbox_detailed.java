package jsdx.zr.entity;
/**
 * 
 * 发件箱详细表   实体类
 *
 */
public class Outbox_detailed {
	private int detailed_id;
	private Outbox send_id;
	private User outbox_sender;
	public int getDetailed_id() {
		return detailed_id;
	}
	public void setDetailed_id(int detailed_id) {
		this.detailed_id = detailed_id;
	}
	public Outbox getSend_id() {
		return send_id;
	}
	public void setSend_id(Outbox send_id) {
		this.send_id = send_id;
	}
	public User getOutbox_sender() {
		return outbox_sender;
	}
	public void setOutbox_sender(User outbox_sender) {
		this.outbox_sender = outbox_sender;
	}

}
