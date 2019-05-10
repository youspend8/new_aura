package com.bitcamp.aura.common.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.aura.review.service.ReviewService;
import com.bitcamp.aura.user.service.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserService userService;
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
	
	@RequestMapping(value="/manager")
	public String manager(HttpSession session) {
		if (userService.getUser((String)session.getAttribute("nickname")).getIsAdmin() == 1) {
			return "redirect:http://localhost:3000/";
		}
		return "redirect:http://localhost:3000/";
	}
	
}


