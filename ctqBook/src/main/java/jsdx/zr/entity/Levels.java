package jsdx.zr.entity;
/**
 * 
 * 用户等级权限表   实体类
 *
 */
public class Levels {
	private int level;
	private int level_name;
	private int experience;
	private int amount_downloads;
	private int ticket;
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
	public int getLevel_name() {
		return level_name;
	}
	public void setLevel_name(int level_name) {
		this.level_name = level_name;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public int getAmount_downloads() {
		return amount_downloads;
	}
	public void setAmount_downloads(int amount_downloads) {
		this.amount_downloads = amount_downloads;
	}
	public int getTicket() {
		return ticket;
	}
	public void setTicket(int ticket) {
		this.ticket = ticket;
	}

}
