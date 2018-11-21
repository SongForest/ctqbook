package jsdx.zr.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jsdx.zr.entity.Inbox;
import jsdx.zr.service.InboxService;

@Controller
public class InboxController {
	 @Autowired
	InboxService service;

	@RequestMapping("/inboxList")
	public ModelAndView list() {
		List<Inbox> list = service.findAll();
		return new ModelAndView("incomingEmail", "inbox", list);
	} 
}
