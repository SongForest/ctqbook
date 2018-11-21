package jsdx.zr.service;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.LevelDao;
import jsdx.zr.entity.Levels;
import jsdx.zr.entity.User;

@Service
public class LevelsService {

	@Autowired
	SqlSessionFactory sqlSessionFactory;
	
	public List<Levels> findAllLevels(){
		SqlSession sqlSession = null;
		List<Levels> list = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			LevelDao dao = sqlSession.getMapper(LevelDao.class);
			list = dao.findAllLevel();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			sqlSession.close();
		}
		return list;
	}
	
}
