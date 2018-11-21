package jsdx.zr.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.ReviewDao;
import jsdx.zr.entity.Review;

@Service
public class ReviewService {
@Autowired 
SqlSessionFactory factory;
	
	public List<Review>findReviewByNovelId(int novelid){
		List<Review>list=null;
		SqlSession sqlSession=null;
		try {
			sqlSession=factory.openSession();
			ReviewDao dao=sqlSession.getMapper(ReviewDao.class);
			list=dao.findReviewByNovelId(novelid);
		}catch(Exception e){
			System.out.println(e.getMessage());
		} finally {
			// TODO: handle finally clause
			sqlSession.close();
		}
		return list;
	}

}
