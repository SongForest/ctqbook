package jsdx.zr.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jsdx.zr.entity.Shelves;
import jsdx.zr.entity.User;
import jsdx.zr.service.ShelvesService;

@Controller
public class ShelvesController {

	@Autowired
	ShelvesService shelvesService;

	@RequestMapping("/shelf")
	public String find(Model model, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("muser");
		List<Shelves> list = shelvesService.findShelvels(user.getUserID());
		model.addAttribute("shelves", list);
		return "shelf";
	}

	@RequestMapping("/newshelf_{id:\\d{1,5}}")
	@ResponseBody
	public String addshelf(@PathVariable("id") int novelid, HttpServletRequest request) {
		User user = null;
		if ((user = (User) request.getSession().getAttribute("muser")) != null) {
			int ret = shelvesService.addshevels(novelid, user.getUserID());
			if (ret == 3) {
				return "err1";
			} else {
				return "ok";
			}
		} else {
			return "err0";
		}
	}

	@RequestMapping("/delshelf_{id:\\d{1,5}}")
	public String delbookbushe(@PathVariable("id") int shelfid, HttpServletRequest request) {
		shelvesService.delshelves(shelfid);
		return "redirect:/shelf";
	}
	
	@RequestMapping("/delshelf")
	public String delbookbushes(@RequestParam("interest") String[] interest, HttpServletRequest request) {
		for (String shelfid : interest) {
			shelvesService.delshelves(Integer.parseInt(shelfid));
		}
		return "redirect:/shelf";
	}
}
