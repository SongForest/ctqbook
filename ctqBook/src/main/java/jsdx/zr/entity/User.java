package jsdx.zr.entity;
/**
 * 
 * 用户表 实体类
 *
 */
public class User {
	private int userID;
	private String userName;
	private String nickname;
	private String head_thumb;
	private int points;
	private int experience;
	private Levels level;
	private int amount_downloads;
	private int ticket;
	private String email;
	private String create_date;
	private String last_date;
	private int status;
	private int user_type;
	private String password;
	private String userSex;
	private String userSign;
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getHead_thumb() {
		return head_thumb;
	}
	public void setHead_thumb(String head_thumb) {
		this.head_thumb = head_thumb;
	}
	public int getPoints() {
		return points;
	}
	public void setPoints(int points) {
		this.points = points;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	public Levels getLevel() {
		return level;
	}
	public void setLevel(Levels level) {
		this.level = level;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public int getUser_type() {
		return user_type;
	}
	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserSex() {
		return userSex;
	}
	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}
	public String getUserSign() {
		return userSign;
	}
	public void setUserSign(String userSign) {
		this.userSign = userSign;
	}
	@Override
	public String toString() {
		return "User [userID=" + userID + ", userName=" + userName + ", nickname=" + nickname + ", head_thumb="
				+ head_thumb + ", points=" + points + ", experience=" + experience + ", level=" + level
				+ ", amount_downloads=" + amount_downloads + ", ticket=" + ticket + ", email=" + email
				+ ", create_date=" + create_date + ", last_date=" + last_date + ", status=" + status + ", user_type="
				+ user_type + ", password=" + password + ", userSex=" + userSex + ", userSign=" + userSign + "]";
	}
	

}
