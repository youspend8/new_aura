package com.bitcamp.aura.reviewlist.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bitcamp.aura.review.dao.ReviewFileMapper;
import com.bitcamp.aura.review.model.ReviewFileVO;
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
	public int reviewPost(
			@ModelAttribute ReviewListVO params,
			HttpSession session) {
		if(session.getAttribute("nickname")!=null) {
			params.setNickname((String)session.getAttribute("nickname")); 
			listService.doReview(params);
			return 1;
		}
		return 0;
	}
	
	@RequestMapping("/favostar")
	@ResponseBody
	public int favostar(int review_post_num, HttpSession session ){
		System.out.println("여기까지는 들어옵니다.");
		String nickname = (String)session.getAttribute("nickname");
		
		Date today = new Date();
		SimpleDateFormat sm = new SimpleDateFormat("yy/mm/dd HH:mm:ss");
		ReviewListVO reviewListVo = new ReviewListVO();
		
		
		int num =0;
		num++;
		reviewListVo.setNickname(nickname); 
		reviewListVo.setDate(sm.format(today));
		reviewListVo.setReviewType(2);
		reviewListVo.setPostNum(review_post_num);
		reviewListVo.setNum(num);
		System.out.println("리뷰리스트 삽입:" + reviewListVo);
		
		reviewListMapper.insert(reviewListVo);
		
		return 1;
	}
	
	
	
	
	
	
	@RequestMapping("/modal_review")
	@ResponseBody
	public List<ReviewListVO> modal_review(HttpSession session) {
//		ModelAndView mv = new ModelAndView();
		String nickname = (String) session.getAttribute("nickname");
		List<ReviewListVO> reviewListVo = reviewListMapper.selectByNickname(nickname);
//		int postNum = reviewListVo.get(0).getPostNum();
//		System.out.println("postNum" + postNum);
//		List<ReviewFileVO> reviewFileVo = reviewFileMapper.selectByPostNum(postNum);
		reviewListVo.forEach(item -> {
			item.setTitle(reviewService.searchOne(item.getPostNum()).getTitle());
//			item.(postNum);
		});
				
		System.out.println("reviewListVo"+reviewListVo); //리뷰리스트의  List의 내용은 넘어옴
		
		return reviewListVo;
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
