package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.SectionInfo;

public interface SectionInfoDao {

	public List<SectionInfo> findSectionInfoByVolumeId(int volid);
	
	/**
	 * 
	 * @param novelid 书籍id
	 * @return 返回当前书籍最新的12章
	 */
	public List<SectionInfo> findpartSectionInfoByNovelId(int novelid);

	public SectionInfo findNextSectionInfoByNovelId(Map<String,Integer>map);
	
	public SectionInfo findLastSectionInfoByNovelId(Map<String,Integer>map);
	
	public SectionInfo findSectionInfoById(int id);
	/**
	 * 
	 * @param map
	 * 	novelid传入书籍id ，begin end 为当前页面  rstatus 0为尚未下载，1为已经更新
	 * @return
	 */
	public List<SectionInfo> findSectionInfo(Map<String, Object>map);
	
	public int add(SectionInfo sInfo);
	
	public int update(SectionInfo sInfo);
}
