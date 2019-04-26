package com.bitcamp.aura.reviewlist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.aura.review.service.RestaurantService;

@Controller
public class ReviewListController {
	
	@Autowired
	private RestaurantService service;
	
	@RequestMapping(value="/list")
	public String list(Model model) {
		model.addAttribute("list", service.searchAll());
		return "/reviewList";
	}
	
	
	
	
	
	
	
	
	
	
	
}
