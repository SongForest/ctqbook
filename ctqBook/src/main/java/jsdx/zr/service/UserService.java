package jsdx.zr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.UserDao;
import jsdx.zr.entity.User;

@Service
public class UserService {
	
	@Autowired
	SqlSessionFactory sqlSessionFactory;
	
	public User findUserById(int id){
		SqlSession sqlSession = null;
		User user = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			UserDao dao = sqlSession.getMapper(UserDao.class);
			user = dao.findUserById(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}finally {
			sqlSession.close();
		}
		return user;
		
	}
	
	public User findUserByName(String name){
		SqlSession sqlSession = null;
		User user = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			UserDao dao = sqlSession.getMapper(UserDao.class);
			user = dao.findUserByName(name);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return user;
	}
	
	public List<User> findUserBynickName(String nickname){
		SqlSession sqlSession = null;
		List<User> user = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			UserDao dao = sqlSession.getMapper(UserDao.class);
			Map<String, Object>map=new HashMap<String, Object>();
			map.put("name", nickname);
			map.put("begin", 0);
			map.put("end", 5);
			user = dao.findUserByNickName(map);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return user;
	}
	

	public List<User> findUserByEmail(String email){
		SqlSession sqlSession = null;
		List<User> user = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			UserDao dao = sqlSession.getMapper(UserDao.class);
			user = dao.findUserByEmail(email);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return user;
		
	}
	
	public int updateCenter(User user){
		SqlSession sqlSession = null;
		int r = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			UserDao dao = sqlSession.getMapper(UserDao.class);
			r = dao.update(user);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return r;
	}
	
	public int regist(User user){
		SqlSession sqlSession = null;
		int r = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			UserDao dao = sqlSession.getMapper(UserDao.class);
			r = dao.addUser(user);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return r;
	}

	public User CountPoint(int id){
		User user=null;
		SqlSession sqlSession=null;
		try{
			sqlSession=sqlSessionFactory.openSession();
			UserDao dao=sqlSession.getMapper(UserDao.class);
			user=dao.findUserById(id);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}finally {
			sqlSession.close();
		}
		return user;
	}
	
	
}