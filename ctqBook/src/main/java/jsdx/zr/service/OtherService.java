package jsdx.zr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.NovelDao;
import jsdx.zr.dao.TClassDao;
import jsdx.zr.dao.TicketDao;
import jsdx.zr.dao.TypeDao;
import jsdx.zr.entity.Type;
import jsdx.zr.entity.User;
import jsdx.zr.entity.Novel;
import jsdx.zr.entity.TClass;
import jsdx.zr.entity.Ticket;

@Service
public class OtherService {

	@Autowired
	SqlSessionFactory sqlSessionFactory;

	public List<Type> findType() {
		SqlSession sqlSession = null;
		List<Type> novel = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			TypeDao dao = sqlSession.getMapper(TypeDao.class);
			Map<String, Integer> maps = new HashMap<String, Integer>();
			maps.put("begin", 0);
			maps.put("end", 20);
			novel = dao.findType(maps);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return novel;
	}

	public List<TClass> findclass(int typeid) {
		SqlSession sqlSession = null;
		List<TClass> novel = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			TClassDao dao = sqlSession.getMapper(TClassDao.class);
			Map<String, Object> maps = new HashMap<String, Object>();
			maps.put("typeid", typeid);
			maps.put("begin", 0);
			maps.put("end", 100);
			novel = dao.findTClass(maps);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return novel;
	}

	public boolean pdclass(int classid, int typeid) {
		SqlSession sqlSession = null;
		boolean flag = false;
		try {
			sqlSession = sqlSessionFactory.openSession();
			TClassDao dao = sqlSession.getMapper(TClassDao.class);
			Map<String, Object> maps = new HashMap<String, Object>();
			maps.put("typeid", typeid);
			maps.put("classid", classid);
			maps.put("begin", 0);
			maps.put("end", 100);
			flag = dao.findTClass(maps).size() == 0;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return flag;
	}

	public List<Novel> findnobuau(int authorid) {
		SqlSession sqlSession = null;
		List<Novel> novel = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);
			novel = dao.findNovelByAuthorid(authorid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return novel;
	}

	public int tuij(User user, int novelid, int num) {
		int ret = 0;
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao ndao = sqlSession.getMapper(NovelDao.class);
			TicketDao tDao = sqlSession.getMapper(TicketDao.class);
			Novel novel = ndao.findNovelById(novelid);
			Ticket ticket = new Ticket();
			ticket.setNovelid(novel);
			ticket.setUser(user);
			ticket.setTicnum(num);
			ret = tDao.add(ticket);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return ret;
	}
}
