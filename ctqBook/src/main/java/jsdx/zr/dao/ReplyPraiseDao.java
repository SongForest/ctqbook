package jsdx.zr.dao;

import java.util.Map;

public interface ReplyPraiseDao {
	/**
	 * 
	 * @param map
	 *            传入用户id userid 和 回复id replyid
	 * @return
	 */
	public int findReplyPraise(Map<String, Integer> map);

	public int click(Map<String, Integer> map);

}
