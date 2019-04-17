package com.bitcamp.aura.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/review")
public class ReviewController {
	
	@RequestMapping(value="/list")
	public String list() {
		
		return "reviewList";
	}
}
