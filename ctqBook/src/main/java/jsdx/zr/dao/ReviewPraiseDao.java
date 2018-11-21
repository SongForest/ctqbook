package jsdx.zr.dao;

import java.util.Map;

public interface ReviewPraiseDao {
	/**
	 * 
	 * @param map
	 *            传入用户id userid 和 评价id reviewid
	 * @return
	 */
	public int findReviewPraise(Map<String, Integer> map);

	public int click(Map<String, Integer> map);

}
