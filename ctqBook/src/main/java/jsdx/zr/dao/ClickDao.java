package jsdx.zr.dao;

import java.util.Map;


public interface ClickDao {
	/**
	 * 
	 * @param map
	 * 	书籍id novelid 用户id userid 查询事件 click 
	 * @return
	 */
	public int findClick(Map<String, Integer> map);

	public int add(Map<String, Integer> map);
}
