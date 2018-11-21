package jsdx.zr.controller;

import java.util.List;

import javax.ws.rs.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jsdx.zr.entity.Review;
import jsdx.zr.service.ReviewService;

@Controller
public class ReviewController {
	@Autowired
	ReviewService reviewService;

	@RequestMapping("/findReviewByNovelId_{novelid:\\d}")
	public ModelAndView findReviewByNovelId(@PathVariable(value = "novelid") int novelid, Model model) {
		List<Review> list = reviewService.findReviewByNovelId(novelid);
		for (Review review : list) {
			System.out.println(review);
		}
		model.addAttribute("list", list);
		return new ModelAndView("bookComment");
	}
}
