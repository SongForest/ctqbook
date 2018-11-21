package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.Type;

public interface TypeDao {
	/**
	 * map.put("begin",数字)
	 * 
	 */
	public List<Type> findType(Map<String, Integer> map);

	public Type findTypeById(int id);
}
