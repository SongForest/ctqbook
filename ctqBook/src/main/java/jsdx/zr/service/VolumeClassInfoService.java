package jsdx.zr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jsdx.zr.dao.VolumeClassInfoDao;
import jsdx.zr.entity.Volume_classInfo;

@Service
public class VolumeClassInfoService {
	@Autowired
	SqlSessionFactory sqlSessionFactory;

	public List<Volume_classInfo> findVolumeClassInfo(int novelid) {
		SqlSession sqlSession = null;
		List<Volume_classInfo> list = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			VolumeClassInfoDao dao = sqlSession.getMapper(VolumeClassInfoDao.class);
			Map<String,Object> map=new HashMap<String, Object>();
			map.put("begin", 0);
			map.put("end", 9999);
			map.put("novelid", novelid);
			list = dao.findVolumeClassInfo(map);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			sqlSession.close();
		}
		return list;
	}

}