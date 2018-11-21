package jsdx.zr.util;

import java.util.List;

/*
 * 分页类，用于封装分页所需要的数据
 */
public class PageUtil<T> {
	
	private int pageIndex;  //当前页
	private int pageSize;  //每页大小
	private int count;     //总记录数
	private int PageNumber;  //总页数，可以通过（总记录数 / 每页大小）计算出来。
	List<T> list;          //集合存放本页的数据。
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPageNumber() {
		return PageNumber;
	}
	public void setPageNumber(int pageNumber) {
		PageNumber = pageNumber;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	
	

	
}
