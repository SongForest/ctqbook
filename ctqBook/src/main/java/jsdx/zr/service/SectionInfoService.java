package jsdx.zr.service;

import java.util.HashMap;
import java.util.Map;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.ClickDao;
import jsdx.zr.dao.HistoryDao;
import jsdx.zr.dao.NovelDao;
import jsdx.zr.dao.SectionInfoDao;
import jsdx.zr.entity.History;
import jsdx.zr.entity.SectionInfo;
import jsdx.zr.entity.User;

//自动扫描到IOC容器中
@Service
public class SectionInfoService {
	// 自动IOC容器注入对象
	@Autowired
	SqlSessionFactory sqlSessionFactory;

	/**
	 * 通过章节id查找章节信息
	 * 
	 * @param secid
	 * @return
	 */
	public SectionInfo findSectionInfoNextLast(int mid, int novelid, int secid) {
		SqlSession sqlSession = null;
		SectionInfo list = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			SectionInfoDao dao = sqlSession.getMapper(SectionInfoDao.class);

			Map<String, Integer> map = new HashMap<String, Integer>();
			map.put("novelid", novelid);
			map.put("sectionid", secid);
			if (mid == 0) {
				list = dao.findSectionInfoById(secid);
			} else if (mid == 1) {
				list = dao.findNextSectionInfoByNovelId(map);
			} else if (mid == 2) {
				list = dao.findLastSectionInfoByNovelId(map);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			sqlSession.close();
		}
		return list;
	}

	/**
	 * 
	 * novelid 书籍id，查找书籍信息
	 * 
	 * @return 返回当前书籍最新的12章
	 */
	public List<SectionInfo> findpartSectionInfoByNovelId(int id) {
		List<SectionInfo> sectionInfo = null;
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			SectionInfoDao dao = sqlSession.getMapper(SectionInfoDao.class);
			sectionInfo = dao.findpartSectionInfoByNovelId(id);
			System.out.println(sectionInfo.size());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return sectionInfo;

	}

	public void inse(User user, int secid) {
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			SectionInfoDao dao = sqlSession.getMapper(SectionInfoDao.class);
			HistoryDao hdao = sqlSession.getMapper(HistoryDao.class);
			ClickDao cdao=sqlSession.getMapper(ClickDao.class);
			SectionInfo sec = dao.findSectionInfoById(secid);
			Map<String,Integer>map=new HashMap<String, Integer>();
			map.put("novelid", sec.getVolume_class().getNovel().getNovelid());
			map.put("userid", user.getUserID());
			map.put("click", 1);
			if(cdao.findClick(map)==0){
				cdao.add(map);
			}
			History history=null;
			if((history=hdao.findHistory(map))==null){
				history=new History();
				history.setNovel(sec.getVolume_class().getNovel());
				history.setSection(sec);
				history.setUser(user);
				hdao.add(history);
			}else{
				history.setSection(sec);
				hdao.update(history);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}