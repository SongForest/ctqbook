package jsdx.zr.dao;

import java.util.List;
import java.util.Map;

import jsdx.zr.entity.Review;

public interface ReviewDao {
	/**
	 * 
	 * @param map
	 * 	begin,end novelid
	 * @return
	 */
	public List<Review> findReview(Map<String, Object> map);

	public Review findReviewById(int id);

	public int add(Review review);
	
	public List<Review> findReviewByNovelId(int novelid);
}
