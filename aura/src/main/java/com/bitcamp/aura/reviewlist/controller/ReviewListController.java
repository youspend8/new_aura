package com.bitcamp.aura.reviewlist.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.StreamSupport;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bitcamp.aura.review.dao.ReviewFileMapper;
import com.bitcamp.aura.review.service.ReviewService;
import com.bitcamp.aura.reviewlist.dao.ReviewListMapper;
import com.bitcamp.aura.reviewlist.model.ReviewListVO;
import com.bitcamp.aura.reviewlist.service.ReviewListService;

@Controller
@RequestMapping(value="/reviewList")
public class ReviewListController {
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private ReviewListService listService;
	@Autowired
	private ReviewFileMapper reviewFileMapper;
	@Autowired
	private ReviewListMapper reviewListMapper;
	
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
	
	
	@RequestMapping("/modal_review")
	@ResponseBody
	public List<ReviewListVO> modal_review(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String nickname = (String) session.getAttribute("nickname");

		List<ReviewListVO> reviewListVo = reviewListMapper.selectByNickname(nickname);
		reviewListVo.forEach(item -> {
			item.setTitle(reviewService.searchOne(item.getPostNum()).getTitle());
		});
				
//		System.out.println("reviewListVo"+reviewListVo); //리뷰리스트의  List의 내용은 넘어옴
		
		return reviewListVo;
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
