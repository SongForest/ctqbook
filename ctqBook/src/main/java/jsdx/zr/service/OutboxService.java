package jsdx.zr.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.OutboxDao;
import jsdx.zr.entity.Outbox;

@Service
public class OutboxService {
	@Autowired
	SqlSessionFactory factory;

	 public List<Outbox>findAll(){
		 List <Outbox> list =null;
		 SqlSession sqlSession=null;
		 try {
			sqlSession=factory.openSession();
			OutboxDao dao=sqlSession.getMapper(OutboxDao.class);
			list = dao.findAll();
		} catch(Exception e){
			System.out.println(e.getMessage());
		}finally {
			// TODO: handle finally clause
		}
		 return list;
	 }
	  
	 public int add(Outbox outbox){
		 int result=0;
		 SqlSession sqlSession=null;
		 try {
			sqlSession=factory.openSession();
			OutboxDao dao=sqlSession.getMapper(OutboxDao.class);
			result=dao.add(outbox);
		}catch(Exception e){
			System.out.println(e.getMessage());
		} finally {
			// TODO: handle finally clause
			sqlSession.close();
		}
		 return result;
	 }
	 
}
