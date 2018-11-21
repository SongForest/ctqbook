package jsdx.zr.entity;

/**
 * 
 * 章节信息表 实体类
 *
 */
public class SectionInfo {
	private int sectionid;
	private Volume_classInfo volume_class;
	private String sectionname;
	private String sectioncontext;
	private int numbercount;
	private int readstatus;
	private String create_date;

	public int getSectionid() {
		return sectionid;
	}

	public void setSectionid(int sectionid) {
		this.sectionid = sectionid;
	}

	public Volume_classInfo getVolume_class() {
		return volume_class;
	}

	public void setVolume_class(Volume_classInfo volume_class) {
		this.volume_class = volume_class;
	}

	public String getSectionname() {
		return sectionname;
	}

	public void setSectionname(String sectionname) {
		this.sectionname = sectionname;
	}

	public String getSectioncontext() {
		return sectioncontext;
	}

	public void setSectioncontext(String sectioncontext) {
		this.sectioncontext = sectioncontext;
	}

	public int getNumbercount() {
		return numbercount;
	}

	public void setNumbercount(int numbercount) {
		this.numbercount = numbercount;
	}

	public int getReadstatus() {
		return readstatus;
	}

	public void setReadstatus(int readstatus) {
		this.readstatus = readstatus;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

}
