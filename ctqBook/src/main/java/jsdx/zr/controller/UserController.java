package jsdx.zr.controller;

import jsdx.zr.entity.Levels;
import jsdx.zr.entity.User;
import jsdx.zr.service.LevelsService;
import jsdx.zr.service.UserService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	LevelsService levelsService;

	/**
	 * 登录
	 */
	@RequestMapping("/login")
	public String login(Model model, User u, HttpServletRequest request) {
		User users = userService.findUserByName(u.getUserName().trim());
		if (users == null) {
			return "index";
		} else if (users.getPassword().equals(u.getPassword().trim())) {
			try {
				Date da = new Date();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String now = dateFormat.format(da);
				User us = new User();
				if ((da.getTime() - dateFormat.parse(users.getLast_date()).getTime()) / (24 * 3600 * 1000) >= 1) {
					users.setAmount_downloads(users.getLevel().getAmount_downloads());
					users.setPoints(50+ users.getPoints());
					users.setTicket(users.getTicket() + users.getLevel().getTicket());
					us.setAmount_downloads(users.getAmount_downloads() + 1);
					us.setPoints(users.getPoints() + 1);
					us.setTicket(users.getTicket() + 1);
				}
				us.setUserID(users.getUserID());
				us.setLast_date(now);
				int ret = userService.updateCenter(us);
				if (ret > 0) {
					request.getSession().setAttribute("muser", users);
					return "redirect:selectlevel";
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "index";
		} else {
			return "index";
		}
	}

	/**
	 * 个人中心-等级显示
	 */
	@RequestMapping("/selectlevel")
	public String selectlevel(Model model, User u, HttpServletRequest request) {
		List<Levels> lev = levelsService.findAllLevels();
		model.addAttribute("lev", lev);
		return "center";
	}

	/**
	 * 修改密码
	 */
	@RequestMapping("/updatePwd")
	public ModelAndView updatePwd(String newpassword, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("muser");
		User u = new User();
		u.setUserID(user.getUserID());
		u.setPassword(newpassword);
		int ret = userService.updateCenter(u);
		if (ret == 1) {
			user.setPassword(newpassword);
			request.getSession().setAttribute("muser", user);
			return new ModelAndView("index");
		} else {
			return new ModelAndView("center");
		}
	}

	/**
	 * 验证是否注册
	 */
	@RequestMapping("/pdregis")
	@ResponseBody
	public String pd(@RequestBody User user) {
		if (user.getUserName() != null) {
			User user2 = userService.findUserByName(user.getUserName().trim());
			if (user2 == null) {
				return "ok";
			}
		} else if (user.getEmail() != null) {
			if (userService.findUserByEmail(user.getEmail().trim()).size() == 0) {
				return "ok";
			}
		} else if (user.getNickname() != null) {
			if (userService.findUserBynickName(user.getNickname().trim()).size() == 0) {
				return "ok";
			}
		}
		return "d_err";
	}

	/**
	 * 修改头像
	 */
	@RequestMapping("/updateHead")
	public ModelAndView updateHead(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("muser");
		String photo = request.getParameter("photo");
		User u = new User();
		u.setUserID(user.getUserID());
		u.setHead_thumb(photo);
		int r = userService.updateCenter(u);
		if (r > 0) {
			user.setHead_thumb(photo);
			request.getSession().setAttribute("muser", user);
			return new ModelAndView("redirect:selectlevel");
		} else {
			return new ModelAndView("updateHead");
		}
	}

	/**
	 * 修改个人信息
	 */
	@RequestMapping("/updateinfo")
	public ModelAndView updateinfo(HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("muser");
		String Nickname = request.getParameter("Nickname");
		String Emal = request.getParameter("Emal");
		String Gender = request.getParameter("Gender");
		String Sign = request.getParameter("Sign");
		User u = new User();
		u.setUserID(user.getUserID());
		u.setNickname(Nickname);
		u.setEmail(Emal);
		u.setUserSex(Gender);
		u.setUserSign(Sign);
		int r = userService.updateCenter(u);
		if (r > 0) {
			user.setNickname(Nickname);
			user.setEmail(Emal);
			user.setUserSex(Gender);
			user.setUserSign(Sign);
			request.getSession().setAttribute("muser", user);
			return new ModelAndView("updateInfo");
		} else {
			return new ModelAndView("index");
		}
	}

	/**
	 * 退出
	 */
	@RequestMapping("/exit")
	public ModelAndView exit(HttpServletRequest request) {
		request.getSession().invalidate();
		return new ModelAndView("index");
	}

	/**
	 * 统计积分
	 */
	@RequestMapping("/CountPoints_{id:\\d}")
	public ModelAndView CountPoint(@PathVariable(value = "id") int id, Model model) {
		User CountPoint = userService.findUserById(id);
		model.addAttribute("CountPoint", CountPoint);
		return new ModelAndView("points");
	}
}
