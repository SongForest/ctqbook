package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.Debate;

public interface DebateDao {
	/**
	 * 
	 * @param map
	 * 	4个参数 begin,end  novelid书籍id noteid表示讨论id 
	 * @return
	 * 返回debte集合
	 */
	public List<Debate> findDebate(Map<String, Object>map);
	
	public Debate findDebateById(int id);
	
	public int add(Debate debate);
	
}
