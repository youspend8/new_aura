package com.bitcamp.aura.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.aura.review.service.RestaurantService;

@Controller
@RequestMapping(value="/review")
public class ReviewController {

	@Autowired
	private RestaurantService service;
	
	@RequestMapping(value="/post")
	public String post() {
		
		return "reviewPost";
	}
	
	@RequestMapping(value="/write")
	public String write() {
		
		return "";
	}
	
}
