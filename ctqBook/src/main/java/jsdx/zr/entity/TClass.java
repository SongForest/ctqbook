package jsdx.zr.entity;

/**
 * 
 * 书籍小类表 实体类
 *
 */
public class TClass {
	private int classesid;
	private String classesname;
	private Type type_id;
	private String introduction;
	private int booknum;
	private String create_date;

	public int getClassesid() {
		return classesid;
	}

	public void setClassesid(int classesid) {
		this.classesid = classesid;
	}

	public String getClassesname() {
		return classesname;
	}

	public void setClassesname(String classesname) {
		this.classesname = classesname;
	}

	public Type getType_id() {
		return type_id;
	}

	public void setType_id(Type type_id) {
		this.type_id = type_id;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public int getBooknum() {
		return booknum;
	}

	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

}
