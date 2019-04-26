package com.bitcamp.aura.reviewlist.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bitcamp.aura.reviewlist.model.ReviewListSelectParamsVO;
import com.bitcamp.aura.reviewlist.model.ReviewListVO;
import com.bitcamp.aura.reviewlist.service.ReviewListServiceImp;

@Controller
@RequestMapping(value="/reviewList")
public class ReviewListController {
	
	@Autowired
	private ReviewListServiceImp service;
	
	
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
