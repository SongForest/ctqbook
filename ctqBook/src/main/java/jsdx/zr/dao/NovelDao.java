package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.Novel;

public interface NovelDao {
	// 查询全部书籍
	/**
	 * 
	 * 如果根据书籍类型查询typeid 如 map.put("typeid",填写书籍类型id)
	 * 
	 * 按照书籍小类查询classid
	 * 
	 * 判断是否完结  nuvelstatus 1为未完结，2为完结
	 * 
	 * 如果有分页查询，输入begin， end如map.put("begin",填写数字)
	 * 
	 * 如果有书籍名称模糊查询name 如map.put("name","%"+要查询的数据+"%") 注意模糊查询需要在前后加%
	 * 
	 * 选择更新时间 time 1为3天内更新的，2为7天内更新的，3为半月内更新的，4为一个月内更新的 
	 * 
	 * 排序order 1为按照小说上传时间排序，2为按照 小说总点击率排序，3为按照小说总投票排序，4为按照总收藏排序
	 * 5为按照总字数排序，6为按照月点击排序,7为按照周点击,8为按照月推荐票,9为按照周推荐票
	 * 
	 */
	public List<Novel> findNovel(Map<String, Object> map);
	
	public Novel findNovelById(int id);
	
	public List<Novel> findNovelByAuthorid(int authorid); 
	
	public List<Novel>find(); 
	
	//修改数据，什么改了传什么进去书籍id是一定要的不然无法修改
	public int update(Novel novel);
	
	public int add(Novel novel);
	public int getCount();

	 
}
