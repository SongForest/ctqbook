package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.History;

public interface HistoryDao {
	
	/**
	 * 
	 * @param map 根据用户id userid 和书籍id novelid 查询书籍
	 * @return 只返回一本书
	 */
	public History findHistory(Map<String, Integer>map);
	
	public List<History> findHistoryById(int userid);
	
	public int add(History history);
	
	public int update(History history);
}
