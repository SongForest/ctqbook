package jsdx.zr.entity;

import java.util.List;

/**
 * 
 * 分卷信息表   实体类
 *
 */
public class Volume_classInfo { 
										
	private int volume_classid; 
	private Novel novel;
	private String volume_classname;
	private String create_date;
	private List<SectionInfo> seclist;
	
	public int getVolume_classid() {
		return volume_classid;
	}
	public void setVolume_classid(int volume_classid) {
		this.volume_classid = volume_classid;
	}
	
	public Novel getNovel() {
		return novel;
	}
	public void setNovel(Novel novel) {
		this.novel = novel;
	}
	public String getVolume_classname() {
		return volume_classname;
	}
	public void setVolume_classname(String volume_classname) {
		this.volume_classname = volume_classname;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public List<SectionInfo> getSeclist() {
		return seclist;
	}
	public void setSeclist(List<SectionInfo> seclist) {
		this.seclist = seclist;
	}

}
