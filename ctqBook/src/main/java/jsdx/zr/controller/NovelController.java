package jsdx.zr.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.aspectj.weaver.ast.And;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jsdx.zr.dao.AuthorDao;
import jsdx.zr.entity.Novel;
import jsdx.zr.entity.SectionInfo;
import jsdx.zr.entity.TClass;
import jsdx.zr.entity.Type;
import jsdx.zr.entity.User;
import jsdx.zr.service.ListService;
import jsdx.zr.service.NovelService;
import jsdx.zr.service.OtherService;
import jsdx.zr.service.SectionInfoService;
import jsdx.zr.service.UserService;
import jsdx.zr.util.PageUtil;

@Controller
public class NovelController {

	@Autowired
	NovelService novelService;

	@Autowired
	SectionInfoService sectionInfoService;

	@Autowired
	ListService listser;

	@Autowired
	OtherService otherservice;

	@Autowired
	UserService userService;

	@RequestMapping("/list")
	public String list(Model model) {
		Map<String, List<Novel>> map = novelService.findRankList();
		model.addAttribute("ranklist", map);
		return "ranking_list";
	}

	/**
	 * 查找小说,分页
	 * 
	 * @param model
	 * @param bookname
	 *            书名
	 * @param request
	 * @return
	 */
	@RequestMapping("/findNovel")
	public String findNovel(Model model, String bookname, HttpServletRequest request) {
		int pageIndex = 1; // 默认是第一页
		int pageSize = 3;
		if (request.getParameter("pageIndex") != null) {
			pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
		}

		PageUtil<Novel> novel = novelService.findNovel(bookname, pageIndex, pageSize);
		List<Novel> list = novelService.findNovel();
		if (bookname == "") {
			return "index";
		} else {
			model.addAttribute("findNovelResult", novel);
			model.addAttribute("novellist", list);
			model.addAttribute("book_name", bookname);
			return "findResult";
		}

	}

	@RequestMapping("/findByNovelIda_{id:\\d{1,5}}")
	public String lista(@PathVariable(value = "id") int authorid, Model model) {
		List<Novel> novel = otherservice.findnobuau(authorid);
		List<Novel> list = novelService.findNovel();
		model.addAttribute("findNovelResult", novel);
		model.addAttribute("novellist", list);
		return "authorResult";

	}

	
	@RequestMapping("/findByNovelId_{id:\\d}")
	public ModelAndView list(@PathVariable(value = "id") int authorid, Model model) {
		List<Novel> novel = novelService.findNovelByAuthorId(authorid);
		model.addAttribute("novel", novel);
		return new ModelAndView("shelf");
	}
	/**
	 * 通过书籍id查找书籍具体信息
	 * 
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping("/Novel_{id:\\d{1,5}}")
	public String findpartSectionInfoByNovelId(@PathVariable("id") int id, Model model) {
		// 通过id查找书籍详细信息
		Novel novel = novelService.findNovelById(id);
		// 通过id查找书籍章节信息
		List<SectionInfo> sectionInfo = sectionInfoService.findpartSectionInfoByNovelId(id);
		// 查找热门收藏书籍
		List<Novel> listCollect = novelService.findNovelCollect();
		List<Novel> list = novelService.findNovel();
		model.addAttribute("novelInfo", novel);
		model.addAttribute("sectionInfo", sectionInfo);
		model.addAttribute("collect", listCollect);
		model.addAttribute("novellist", list);
		return "book";
	}

	@RequestMapping("/booktype_{typeid:\\d}")
	public String booktype(Model model, @PathVariable("typeid") int typeid) {
		Map<String, List<Novel>> map = novelService.findType(typeid);
		model.addAttribute("booktype", map);
		return "book_type";
	}

	@RequestMapping("/myindex")
	public String myindex(Model model) {
		Map<String, List<Novel>> novel = novelService.indexs();
		model.addAttribute("indexs", novel);
		return "myindex";
	}

	@RequestMapping("/iobook")
	public String iobook() {
		listser.addbooks();
		return "index";
	}

	@RequestMapping(value = "/downloadFile")
	@ResponseBody
	public String downloadFile(HttpServletRequest request) {
		User user = null;
		if ((user = (User) request.getSession().getAttribute("muser")) != null) {
			if (user.getAmount_downloads() > 0) {
				if (user.getPoints() > 50) {
					return "ok";
				} else {
					return "err2";
				}
			} else {
				return "err1";
			}
		} else {
			return "erro";
		}
	}

	@RequestMapping(value = "/downloadFile_{id:\\d{1,5}}")
	public void downloadFile(@PathVariable("id") int id, HttpServletRequest request, HttpServletResponse response) {
		User user = (User) request.getSession().getAttribute("muser");
		User u = new User();
		u.setUserID(user.getUserID());
		u.setAmount_downloads(user.getAmount_downloads());
		u.setPoints(user.getPoints() - 19);
		u.setExperience(user.getExperience()+50);
		int ret = userService.updateCenter(u);
		if (ret == 1) {
			user.setExperience(user.getExperience()+50);
			user.setAmount_downloads(user.getAmount_downloads());
			user.setPoints(user.getPoints() - 20);
			request.getSession().setAttribute("muser", user);
			listser.downloadSolve(id, request, response);
		}
	}

	@RequestMapping(value = "/tuij_{id:\\d{1,5}}")
	@ResponseBody
	public String tuijianp(@PathVariable("id") int id, int num, HttpServletRequest request) {
		User user = null;
		if ((user = (User) request.getSession().getAttribute("muser")) != null) {
			if (user.getTicket() >= num) {
				User u = new User();
				u.setUserID(user.getUserID());
				u.setTicket(user.getTicket() - num + 1);
				u.setExperience(user.getExperience()+10*num);
				int ret = userService.updateCenter(u);
				if (ret == 1) {
					user.setExperience(user.getExperience()+10*num);
					user.setTicket(user.getTicket() - num);
					request.getSession().setAttribute("muser", user);
					int rets = otherservice.tuij((User) request.getSession().getAttribute("muser"), id, num);
					if (rets == 1) {
						return "ok";
					}
				}
				return "err2";
			} else {
				return "err1";
			}
		} else {
			return "erro";
		}
	}

	@RequestMapping(value = "shuku_{typeid:\\d}_{classid:\\d{1,2}}_{nstatus:\\d}_{cdate:\\d}_{ord:\\d}_{pageIndex:\\d{1,5}}")
	public String stack(@PathVariable("typeid") int typeid, @PathVariable("classid") int classid,
			@PathVariable("nstatus") int nstatus, @PathVariable("cdate") int cdate, @PathVariable("ord") int ord,
			@PathVariable("pageIndex") int pageIndex, Model model) {
		if (typeid != 0 && otherservice.pdclass(classid, typeid)) {
			classid = 0;
		}
		List<Type> list1 = otherservice.findType();
		List<TClass> list2 = otherservice.findclass(typeid);
		PageUtil<Novel> novels = novelService.shuku(typeid, classid, nstatus, cdate, ord, pageIndex);
		model.addAttribute("novels", novels);
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("typeid", typeid);
		model.addAttribute("classid", classid);
		model.addAttribute("nstatus", nstatus);
		model.addAttribute("cdate", cdate);
		model.addAttribute("ord", ord);
		return "stack";
	}

}
