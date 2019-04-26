package com.bitcamp.aura.reviewlist.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bitcamp.aura.reviewlist.model.ReviewListVO;
import com.bitcamp.aura.reviewlist.service.ReviewListService;

@Controller
@RequestMapping(value="/reviewList")
public class ReviewListController {
	@Autowired
	private ReviewListService service;
	
	
	@RequestMapping("/reviewPost")
	@ResponseBody
	public String reviewPost(
			@ModelAttribute ReviewListVO params) {
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		params.setDate(sim.format(new Date()));
		service.doReview(params);
		System.out.println(params);
		return "1";
	}
	
}
