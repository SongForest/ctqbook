package jsdx.zr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import jsdx.zr.entity.Volume_classInfo;
import jsdx.zr.service.VolumeClassInfoService;

@Controller
public class VolumeClassInfoController {
	@Autowired
	VolumeClassInfoService classInfoService;
	
	@RequestMapping("/chapter_{novelid:\\d{1,5}}")
	public String list(@PathVariable(value="novelid")int novelid,Model model){	
		List<Volume_classInfo> list=classInfoService.findVolumeClassInfo(novelid);		
		model.addAttribute("chapterlist", list);
		return "chapter";
	}
	
}