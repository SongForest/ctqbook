package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.Volume_classInfo;

public interface VolumeClassInfoDao {
	
	/**
	 * 
	 * 通过书籍id查询卷 key 值为 map.put("novelid",?)
	 * 
	 */
	public List<Volume_classInfo> findVolumeClassInfo(Map<String, Object> map);

	public Volume_classInfo findVolumeClassInfoById(int id);

	public int update(Volume_classInfo vo);
	
	public int add(Volume_classInfo vo);
}
