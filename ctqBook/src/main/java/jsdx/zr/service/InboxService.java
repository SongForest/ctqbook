package jsdx.zr.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.InboxDao;
import jsdx.zr.entity.Inbox;

@Service
public class InboxService {
	@Autowired
	SqlSessionFactory factory;

	public List<Inbox> findAll() {
		SqlSession sqlSession=null;
		List<Inbox>list=null;
		try {
			sqlSession=factory.openSession();
			InboxDao dao=sqlSession.getMapper(InboxDao.class);
			list=dao.find();
		} catch(Exception e){
			System.out.println(e.getMessage());
		}finally {
			// TODO: handle finally clause
			sqlSession.close();
		}
		return list;
	}
}
