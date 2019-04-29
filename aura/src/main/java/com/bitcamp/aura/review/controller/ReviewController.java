package com.bitcamp.aura.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.aura.review.model.ReviewSelectParamVO;
import com.bitcamp.aura.review.service.ReviewService;

@Controller
@RequestMapping(value="/review")
public class ReviewController {

	@Autowired
	private ReviewService service;

	@RequestMapping(value="/list")
	public String list(Model model) {
		model.addAttribute("list", service.searchAll());
		return "/reviewList";
	}
	
	@RequestMapping(value="/post")
	public String post() {
		
		return "reviewPost";
	}
	
	@RequestMapping(value="/write")
	public String write() {
		
		return "";
	}
	
	@RequestMapping(value="/file")
	public String file() {
		
		return "reviewPost";
	}
	
	@RequestMapping(value="/search")
	public String search(Model model,
			@ModelAttribute ReviewSelectParamVO params) {
		
		model.addAttribute("list", service.searchRestaurants(params));
		return "/reviewList";
	}
}
