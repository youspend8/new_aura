package com.bitcamp.aura.reviewlist.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bitcamp.aura.review.service.ReviewService;
import com.bitcamp.aura.reviewlist.model.ReviewListVO;
import com.bitcamp.aura.reviewlist.service.ReviewListService;

@Controller
@RequestMapping(value="/reviewList")
public class ReviewListController {
	@Autowired
	private ReviewListService listService;
	@Autowired
	private ReviewService reviewService;
	
	
	@RequestMapping("/reviewPost")
	@ResponseBody
	public String reviewPost(
			@ModelAttribute ReviewListVO params,
			HttpSession session) {
		if(session.getAttribute("nickname")!=null) {
			params.setNickname((String)session.getAttribute("nickname")); 
			listService.doReview(params);
		}
		return "1";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
