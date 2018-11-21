package jsdx.zr.dao;

import java.util.Map;

public interface DebatePraiseDao {
	/**
	 * 
	 * @param map
	 *            传入用户id userid 和 评论id debateid
	 * @return
	 */
	public int findDebatePraise(Map<String, Integer> map);

	/**
	 * 
	 * @param map
	 *            传入用户id userid 和 评论id debateid
	 * @return
	 */
	public int click(Map<String, Integer> map);

}
