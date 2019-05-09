package com.bitcamp.aura.review.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bitcamp.aura.comment.model.CommentVO;
import com.bitcamp.aura.comment.service.CommentServicelmpl;
import com.bitcamp.aura.review.model.ReviewVO;
import com.bitcamp.aura.review.model.SearchParams;
import com.bitcamp.aura.review.service.ReviewService;
import com.bitcamp.aura.reviewlist.model.ReviewListSelectParamsVO;
import com.bitcamp.aura.reviewlist.service.ReviewListServiceImp;
import com.bitcamp.aura.user.service.UserDelService;
import com.bitcamp.aura.user.service.UserService;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/review")
public class ReviewController {

	private static final Logger logger = LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private ReviewService service;

	@Autowired
	private ReviewListServiceImp listService;
	
	@Autowired
	private CommentServicelmpl commentService;

	@RequestMapping(value = "/post")
	public String post(Model model,
			@RequestParam("num") int num,
			@RequestParam("type") int type, HttpSession session) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("type", type);
		params.put("num", num);
		HashMap<String, Object> reviewInfo = service.searchByNum(params);

		switch (type) {
			case 1: {
				model.addAttribute("menu", new Gson()
						.fromJson((String) reviewInfo.get("MENU"), HashMap.class)
						.get("menu"));
				break;
			}
			case 2: {
				model.addAttribute("sub", new Gson()
						.fromJson((String) reviewInfo.get("SUBCATEGORY"), HashMap.class)
						.get("subCategory"));
				break;
			}
		}

		logger.info(new StringBuilder()
					.append("read/")
					.append((String) session.getAttribute("nickname") + "/")
					.append(num)
					.toString());
		
		ReviewListSelectParamsVO params2 = new ReviewListSelectParamsVO();
		List<CommentVO> commentList = commentService.selectAllByNum(num);
		
		commentList.forEach(item -> {
			item.setProfile(userService.getUser(item.getNickname()).getProfile());
		});
		
		boolean isShare = false;
		boolean isStar = false;
		boolean isLike = false;
		
		if (session.getAttribute("nickname") == null) {
			
		} else {
			params2.setNickname((String) session.getAttribute("nickname"));
			params2.setPostNum(num);
			params2.setReviewType(1);
			isShare = listService.isShare(params2);
			params2.setReviewType(2);
			isStar = listService.isShare(params2);
			params2.setReviewType(3);
			isLike = listService.isShare(params2);
		}

		reviewInfo.put("isStar", isStar);
		reviewInfo.put("isShare", isShare);
		reviewInfo.put("isLike", isLike);
		model.addAttribute("reviewInfo", reviewInfo);
		model.addAttribute("type", type);
		model.addAttribute("num", num);
		model.addAttribute("commentList", commentList);
		return "reviewPost";
	}

	@RequestMapping(value = "/file")
	public String file() {

		return "reviewPost";
	}

	@GetMapping(value = "/search")
	public String search(Model model,
			@ModelAttribute SearchParams params,
			HttpSession session) {
		
		logger.info(new StringBuilder()
					.append("search/")
					.append((String) session.getAttribute("nickname") + "/")
					.append(params.getType() + "/")
					.append(params.getKeyword())
					.toString());
		
		model.addAttribute("list", service.search(params));
		model.addAttribute("type", params.getType());
		model.addAttribute("keyword", params.getKeyword());
		return "/reviewList";
	}
	
	@GetMapping(value="/search/more")
	@ResponseBody
	public List<ReviewVO> searchMore(
			@ModelAttribute SearchParams params) {
		
		return service.search(params);
	}
	
	@RequestMapping(value = "/search/address")
	@ResponseBody
	public String getAddress(
			@RequestParam("type") int type,
			@RequestParam("keyword") String keyword,
			@ModelAttribute SearchParams params) {

		return new Gson().toJson(service.searchAddress(params));
	}
}
