package jsdx.zr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jsdx.zr.entity.Outbox;
import jsdx.zr.service.OutboxService;

@Controller
public class OutboxController {
	@Autowired
	OutboxService service;
 
	@RequestMapping("/outboxList")
	public ModelAndView findAll(Model model){
		List<Outbox>list=service.findAll(); 
		model.addAttribute("outbox",list);
		return new ModelAndView("sendEmail");
	}
	@RequestMapping("/outboxAdd")
	public ModelAndView add(Outbox outbox){
		int result=service.add(outbox);
		return new ModelAndView("write");
	}
}
