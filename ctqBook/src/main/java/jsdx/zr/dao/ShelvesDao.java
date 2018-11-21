package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.Shelves;

public interface ShelvesDao {
	/**
	 * 
	 * @param map
	 * 	begin,end 根据userid查询 个人书架中的书
	 * @return
	 * 
	 */
	public List<Shelves> findShelves(Map<String,Integer>map);

	/**
	 * 
	 * @param map 传入书籍id novelid 和用户id userid 返回值 ret
	 * @return
	 */
	public void add(Map<String, Integer>map);

	public void del(int id);
}
