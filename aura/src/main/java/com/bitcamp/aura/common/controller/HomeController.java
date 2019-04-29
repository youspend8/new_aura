package com.bitcamp.aura.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.aura.review.service.ReviewService;


@Controller
public class HomeController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/main")
	public String main(Model model) {
		model.addAttribute("reviewVo", reviewService.searchAll());
		return "main";
	}
	
	@RequestMapping(value="/manager/page/gogo/gimoddi")
	public String manager() {
		
		return "redirect:http://localhost:3000/";
	}
	
}


