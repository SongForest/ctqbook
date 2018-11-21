package jsdx.zr.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.HistoryDao;
import jsdx.zr.dao.ShelvesDao;
import jsdx.zr.entity.History;
import jsdx.zr.entity.Shelves;

@Service
public class ShelvesService {
	@Autowired
	SqlSessionFactory sessionFactory;

	public int addshevels(int novelid, int userid) {
		int ret = 0;
		SqlSession session = null;
		try {
			session = sessionFactory.openSession();
			ShelvesDao dao = session.getMapper(ShelvesDao.class);
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("ret", 0);
			map.put("novelid", novelid);
			map.put("userid", userid);
			dao.add(map);
			ret = map.get("ret");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return ret;
	}

	public List<Shelves> findShelvels(int userid) {
		List<Shelves> list = new ArrayList<Shelves>();
		SqlSession session = null;
		try {
			session = sessionFactory.openSession();
			ShelvesDao dao = session.getMapper(ShelvesDao.class);
			HistoryDao hdao = session.getMapper(HistoryDao.class);
			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("userid", userid);
			List<Shelves> lis = dao.findShelves(map);
			for (Shelves shelves : lis) {
				map.put("novelid", shelves.getNovel().getNovelid());
				History history = hdao.findHistory(map);
				shelves.setHistory(history);
				list.add(shelves);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	public void delshelves(int sheid) {
		SqlSession session = null;
		try {
			session = sessionFactory.openSession();
			ShelvesDao dao = session.getMapper(ShelvesDao.class);
			dao.del(sheid);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}
}
