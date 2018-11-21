package jsdx.zr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import jsdx.zr.dao.NovelDao;
import jsdx.zr.entity.Novel;
import jsdx.zr.util.PageUtil;

@Service
public class NovelService {

	@Autowired
	SqlSessionFactory sqlSessionFactory;

	/**
	 * 查询排行榜信息
	 * 
	 * @return
	 */
	public Map<String, List<Novel>> findRankList() {
		SqlSession sqlSession = null;
		Map<String, List<Novel>> novelMap = new HashMap<String, List<Novel>>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);
			// 玄幻奇幻
			// 7为周点击
			// 6为月点击
			// 2为总点击
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("begin", 0);
			map.put("end", 12);
			map.put("typeid", 1);
			map.put("order", 7);
			novelMap.put("list1", dao.findNovel(map));
			map.put("order", 6);
			novelMap.put("list2", dao.findNovel(map));
			map.put("order", 2);
			novelMap.put("list3", dao.findNovel(map));
			// 武侠仙侠
			// 7为周点击
			// 6为月点击
			// 2为总点击
			Map<String, Object> map1 = new HashMap<String, Object>();
			map1.put("begin", 0);
			map1.put("end", 12);
			map1.put("typeid", 2);
			map1.put("order", 7);
			novelMap.put("list4", dao.findNovel(map1));
			map1.put("order", 6);
			novelMap.put("list5", dao.findNovel(map1));
			map1.put("order", 2);
			novelMap.put("list6", dao.findNovel(map1));
			// 都市青春
			// 7为周点击
			// 6为月点击
			// 2为总点击
			Map<String, Object> map2 = new HashMap<String, Object>();
			map2.put("begin", 0);
			map2.put("end", 12);
			map2.put("typeid", 3);
			map2.put("order", 7);
			novelMap.put("list7", dao.findNovel(map2));
			map2.put("order", 6);
			novelMap.put("list8", dao.findNovel(map2));
			map2.put("order", 2);
			novelMap.put("list9", dao.findNovel(map2));
			// 历史军事
			// 7为周点击
			// 6为月点击
			// 2为总点击
			Map<String, Object> map3 = new HashMap<String, Object>();
			map3.put("begin", 0);
			map3.put("end", 12);
			map3.put("typeid", 4);
			map3.put("order", 7);
			novelMap.put("list10", dao.findNovel(map3));
			map3.put("order", 6);
			novelMap.put("list11", dao.findNovel(map3));
			map3.put("order", 2);
			novelMap.put("list12", dao.findNovel(map3));
			// 游戏竞技
			// 7为周点击
			// 6为月点击
			// 2为总点击
			Map<String, Object> map4 = new HashMap<String, Object>();
			map4.put("begin", 0);
			map4.put("end", 12);
			map4.put("typeid", 5);
			map4.put("order", 7);
			novelMap.put("list13", dao.findNovel(map4));
			map4.put("order", 6);
			novelMap.put("list14", dao.findNovel(map4));
			map4.put("order", 2);
			novelMap.put("list15", dao.findNovel(map4));
			// 科幻灵异
			// 7为周点击
			// 6为月点击
			// 2为总点击
			Map<String, Object> map5 = new HashMap<String, Object>();
			map5.put("begin", 0);
			map5.put("end", 12);
			map5.put("typeid", 6);
			map5.put("order", 7);
			novelMap.put("list16", dao.findNovel(map5));
			map5.put("order", 6);
			novelMap.put("list17", dao.findNovel(map5));
			map5.put("order", 2);
			novelMap.put("list18", dao.findNovel(map5));
			// 言情同人
			// 7为周点击
			// 6为月点击
			// 2为总点击
			Map<String, Object> map6 = new HashMap<String, Object>();
			map6.put("begin", 0);
			map6.put("end", 12);
			map6.put("typeid", 7);
			map6.put("order", 7);
			novelMap.put("list19", dao.findNovel(map6));
			map6.put("order", 6);
			novelMap.put("list20", dao.findNovel(map6));
			map6.put("order", 2);
			novelMap.put("list21", dao.findNovel(map6));
			// 点击
			// 7为周点击
			// 6为月点击
			// 2为总点击
			Map<String, Object> map7 = new HashMap<String, Object>();
			map7.put("begin", 0);
			map7.put("end", 12);
			map7.put("order", 7);
			novelMap.put("list22", dao.findNovel(map7));
			map7.put("order", 6);
			novelMap.put("list23", dao.findNovel(map7));
			map7.put("order", 2);
			novelMap.put("list24", dao.findNovel(map7));
			// 推荐
			// 9为周推荐
			// 8为月推荐
			// 3为总推荐
			Map<String, Object> map8 = new HashMap<String, Object>();
			map8.put("begin", 0);
			map8.put("end", 12);
			map8.put("order", 9);
			novelMap.put("list25", dao.findNovel(map8));
			map8.put("order", 8);
			novelMap.put("list26", dao.findNovel(map8));
			map8.put("order", 3);
			novelMap.put("list27", dao.findNovel(map8));
			// 总收藏
			Map<String, Object> map9 = new HashMap<String, Object>();
			map9.put("begin", 0);
			map9.put("end", 20);
			map9.put("order", 4);
			novelMap.put("list28", dao.findNovel(map9));
			// 推荐小说
			Map<String, Object> map10 = new HashMap<String, Object>();
			map10.put("begin", 0);
			map10.put("end", 20);
			map10.put("order", 3);
			novelMap.put("list29", dao.findNovel(map10));
			// 精品小说
			Map<String, Object> map11 = new HashMap<String, Object>();
			map11.put("begin", 0);
			map11.put("end", 20);
			map11.put("order", 2);
			novelMap.put("list30", dao.findNovel(map11));
			// 完本小说
			Map<String, Object> map12 = new HashMap<String, Object>();
			map12.put("begin", 0);
			map12.put("end", 20);
			map12.put("nuvelstatus", 2);
			novelMap.put("list31", dao.findNovel(map12));
			// 强推荐小说
			Map<String, Object> map13 = new HashMap<String, Object>();
			map13.put("begin", 0);
			map13.put("end", 12);
			map13.put("order", 9);
			novelMap.put("list32", dao.findNovel(map13));
			map13.put("order", 8);
			novelMap.put("list33", dao.findNovel(map13));
			map13.put("order", 3);
			novelMap.put("list34", dao.findNovel(map13));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			sqlSession.close();
		}
		return novelMap;
	}

	/**
	 * 书籍类型
	 */
	public Map<String, List<Novel>> findType(int typeid) {
		SqlSession sqlSession = null;
		Map<String, List<Novel>> typemap = new HashMap<String, List<Novel>>();
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);
			// 热力推荐
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("begin", 0);
			map.put("end", 4);
			map.put("typeid", typeid);
			map.put("order", 2);
			typemap.put("type1", dao.findNovel(map));
			// 本周强推
			Map<String, Object> map1 = new HashMap<String, Object>();
			map1.put("begin", 0);
			map1.put("end", 10);
			map1.put("typeid", typeid);
			map1.put("order", 7);
			typemap.put("type2", dao.findNovel(map1));
			// 列表
			Map<String, Object> map2 = new HashMap<String, Object>();
			map2.put("begin", 0);
			map2.put("end", 10);
			map2.put("typeid", typeid);
			typemap.put("type3", dao.findNovel(map2));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			sqlSession.close();
		}
		return typemap;

	}

	/**
	 * 搜索框根据关键字查找书籍及分页
	 * 
	 * @param bookname
	 *            书名
	 * @param pageIndex
	 *            当前页
	 * @param pageSize
	 *            页数大小
	 * @return
	 */
	public PageUtil<Novel> findNovel(String bookname, int pageIndex, int pageSize) {
		SqlSession sqlSession = null;
		List<Novel> novel = null;
		PageUtil<Novel> pageUtil = new PageUtil<Novel>();
		int count = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);

			Map<String, Object> maps = new HashMap<String, Object>();
			// 如果有书籍名称模糊查询name
			maps.put("name", "%" + bookname + "%");
			maps.put("begin", (pageIndex - 1) * pageSize);
			maps.put("end", pageSize);
			novel = dao.findNovel(maps);
			maps.remove("begin");
			count = dao.findNovel(maps).size();
			// 把需要的数据封装在分页工具类中
			pageUtil.setPageIndex(pageIndex);
			pageUtil.setCount(count);
			pageUtil.setPageSize(pageSize);

			// Math.ceil取大于或等于它的最小整数。14.0/5=2.8 3,4,5,6,7,8......
			pageUtil.setPageNumber((int) Math.ceil((double) count / pageSize));
			pageUtil.setList(novel);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return pageUtil;
	}

	/**
	 * 
	 * 通过 3为按照总投票率排序 查找书籍排行榜
	 * 
	 * @return
	 */
	public List<Novel> findNovel() {
		SqlSession sqlSession = null;
		List<Novel> novel = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);

			Map<String, Object> maps = new HashMap<String, Object>();
			maps.put("order", 3);
			maps.put("begin", 0);
			maps.put("end", 6);
			novel = dao.findNovel(maps);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return novel;
	}

	/**
	 * 通过 4为按照总收藏排序 查找书籍排行榜
	 * 
	 * @return
	 */
	public List<Novel> findNovelCollect() {
		List<Novel> list = null;
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);
			Map<String, Object> maps = new HashMap<String, Object>();
			maps.put("order", 4);
			maps.put("begin", 0);
			maps.put("end", 12);
			list = dao.findNovel(maps);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return list;
	}

	/**
	 * 通过id找到对应书籍
	 * 
	 * @param id
	 * @return
	 */
	public Novel findNovelById(int id) {
		SqlSession sqlSession = null;
		Novel novel = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);
			novel = dao.findNovelById(id);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			sqlSession.close();
		}
		return novel;

	}

	public List<Novel> findNovelByAuthorId(int authorid) {
		SqlSession sqlSession = null;
		List<Novel> novel = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);
			novel = dao.findNovelByAuthorid(authorid);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			sqlSession.close();
		}
		return novel;

	}

	public Map<String, List<Novel>> indexs() {
		Map<String, List<Novel>> fiandre = new HashMap<String, List<Novel>>();
		SqlSession sqlSession = null;
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("begin", 0);
			map.put("end", 6);
			map.put("order", 9);
			fiandre.put("list1", dao.findNovel(map));
			map.put("end", 10);
			map.put("order", 4);
			map.put("typeid", 1);
			fiandre.put("list2", dao.findNovel(map));
			map.put("typeid", 2);
			fiandre.put("list3", dao.findNovel(map));
			map.put("end", 5);
			map.put("typeid", 3);
			fiandre.put("list4", dao.findNovel(map));
			map.put("typeid", 4);
			fiandre.put("list5", dao.findNovel(map));
			map.put("typeid", 5);
			fiandre.put("list6", dao.findNovel(map));
			map.put("typeid", 6);
			fiandre.put("list7", dao.findNovel(map));
			map.put("typeid", 7);
			map.put("end", 24);
			fiandre.put("list8", dao.findNovel(map));
			map.remove("typeid");
			map.put("order", 0);
			fiandre.put("list9", dao.findNovel(map));
			map.put("order", 1);
			fiandre.put("list10", dao.findNovel(map));
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			sqlSession.close();
		}
		return fiandre;
	}

	public PageUtil<Novel> shuku(int typeid, int classid, int nstatus, int cdate, int or,int pageIndex) {
		int pageSize=50;
		SqlSession sqlSession = null;
		List<Novel> novel = null;
		PageUtil<Novel> pageUtil = new PageUtil<Novel>();
		int count = 0;
		try {
			sqlSession = sqlSessionFactory.openSession();
			NovelDao dao = sqlSession.getMapper(NovelDao.class);
			Map<String, Object> maps = new HashMap<String, Object>();
			// 如果有书籍名称模糊查询name
			maps.put("typeid", typeid);
			maps.put("classid", classid);
			maps.put("nuvelstatus", nstatus-1);
			maps.put("time", cdate);
			maps.put("order", or);
			maps.put("begin", (pageIndex - 1) * pageSize);
			maps.put("end", pageSize);
			novel = dao.findNovel(maps);
			maps.remove("begin");
			count = dao.findNovel(maps).size();
			//把需要的数据封装在分页工具类中
			pageUtil.setPageIndex(pageIndex);
			pageUtil.setCount(count);
			pageUtil.setPageSize(pageSize);
			// Math.ceil取大于或等于它的最小整数。14.0/5=2.8 3,4,5,6,7,8......
			pageUtil.setPageNumber((int) Math.ceil((double) count / pageSize));
			pageUtil.setList(novel);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (sqlSession != null) {
				sqlSession.close();
			}
		}
		return pageUtil;
	}

}
