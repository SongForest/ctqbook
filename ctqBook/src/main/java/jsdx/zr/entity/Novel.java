package jsdx.zr.entity;

/**
 * 
 * 小说列表信息 实体类
 *
 */
public class Novel {
	private int novelid;
	private String novelname;
	private String novelsynopsis;
	private String novelimg;
	private Author author;
	private TClass novelclasses;
	private int novelstatus;
	private int del_status;
	private int votingcount;
	private int numcount;
	private int clickcount;
	private int collect;
	private double score;
	private SectionInfo sectionid;
	private String create_date;
	private String last_date;

	public int getNovelid() {
		return novelid;
	}

	public void setNovelid(int novelid) {
		this.novelid = novelid;
	}

	public String getNovelname() {
		return novelname;
	}

	public void setNovelname(String novelname) {
		this.novelname = novelname;
	}

	public String getNovelsynopsis() {
		return novelsynopsis;
	}

	public void setNovelsynopsis(String novelsynopsis) {
		this.novelsynopsis = novelsynopsis;
	}

	public String getNovelimg() {
		return novelimg;
	}

	public void setNovelimg(String novelimg) {
		this.novelimg = novelimg;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public TClass getNovelclasses() {
		return novelclasses;
	}

	public void setNovelclasses(TClass novelclasses) {
		this.novelclasses = novelclasses;
	}

	public int getNovelstatus() {
		return novelstatus;
	}

	public void setNovelstatus(int novelstatus) {
		this.novelstatus = novelstatus;
	}

	public int getDel_status() {
		return del_status;
	}

	public void setDel_status(int del_status) {
		this.del_status = del_status;
	}

	public int getVotingcount() {
		return votingcount;
	}

	public void setVotingcount(int votingcount) {
		this.votingcount = votingcount;
	}

	public int getNumcount() {
		return numcount;
	}

	public void setNumcount(int numcount) {
		this.numcount = numcount;
	}

	public int getClickcount() {
		return clickcount;
	}

	public void setClickcount(int clickcount) {
		this.clickcount = clickcount;
	}

	public int getCollect() {
		return collect;
	}

	public void setCollect(int collect) {
		this.collect = collect;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public SectionInfo getSectionid() {
		return sectionid;
	}

	public void setSectionid(SectionInfo sectionid) {
		this.sectionid = sectionid;
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

}
