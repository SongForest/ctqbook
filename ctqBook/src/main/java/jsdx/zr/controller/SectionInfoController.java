package jsdx.zr.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jsdx.zr.entity.SectionInfo;
import jsdx.zr.entity.User;
import jsdx.zr.service.SectionInfoService;

@Controller
public class SectionInfoController {
	@Autowired
	SectionInfoService sectionInfoService;

	@RequestMapping("/secion_{mid:[0-2]}_{novelid:\\d{1,5}}_{secid:\\d{1,5}}")
	public String list(@PathVariable(value = "mid") int mid, @PathVariable(value = "novelid") int novelid,
			@PathVariable(value = "secid") int secid, Model model,HttpServletRequest request) {
		SectionInfo se = sectionInfoService.findSectionInfoNextLast(mid, novelid, secid);
		User u=null;
		if((u=(User) request.getSession().getAttribute("muser"))!=null){
			sectionInfoService.inse(u, secid);
		}
		if(se==null){
			return "redirect:chapter_"+novelid;
		}
		model.addAttribute("sectionInfoList", se); 
		return "content";
	}

}
