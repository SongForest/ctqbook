package jsdx.zr.entity;

import java.util.List;

/**
 * 
 * 作者信息表 实体类
 *
 */
public class Author {
	private int authorid;
	private String authorname;
	private String authorintroduce;
	private String create_date;
	private List<Novel> novellist;
	
	
	public List<Novel> getNovellist() {
		return novellist;
	}

	public void setNovellist(List<Novel> novellist) {
		this.novellist = novellist;
	}

	public int getAuthorid() {
		return authorid;
	}

	public void setAuthorid(int authorid) {
		this.authorid = authorid;
	}

	public String getAuthorname() {
		return authorname;
	}

	public void setAuthorname(String authorname) {
		this.authorname = authorname;
	}

	public String getAuthorintroduce() {
		return authorintroduce;
	}

	public void setAuthorintroduce(String authorintroduce) {
		this.authorintroduce = authorintroduce;
	}

	public String getCreate_date() {
		return create_date;
	}

	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}

}
