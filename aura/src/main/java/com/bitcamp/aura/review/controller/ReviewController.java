package com.bitcamp.aura.review.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitcamp.aura.review.model.SearchParams;
import com.bitcamp.aura.review.service.ReviewService;
import com.bitcamp.aura.reviewlist.model.ReviewListSelectParamsVO;
import com.bitcamp.aura.reviewlist.service.ReviewListServiceImp;
import com.google.gson.Gson;

@Controller
@RequestMapping(value = "/review")
public class ReviewController {

	@Autowired
	private ReviewService service;

	@Autowired
	private ReviewListServiceImp listService;

	@RequestMapping(value = "/post")
	public String post(Model model,
			@RequestParam("num") int num,
			@RequestParam("type") int type, HttpSession session) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("type", type);
		params.put("num", num);
		HashMap<String, Object> reviewInfo = service.searchByNum(params);
		System.out.println(reviewInfo);

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
			}
		}
					
		ReviewListSelectParamsVO params2 = new ReviewListSelectParamsVO();
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
		return "reviewPost";
	}

	@RequestMapping(value = "/file")
	public String file() {

		return "reviewPost";
	}

	@RequestMapping(value = "/search")
	public String search(Model model,
			@RequestParam("type") int type,
			@RequestParam("keyword") String keyword,
			@ModelAttribute SearchParams params) {

		if (type == 1) {
			model.addAttribute("list", service.searchRestaurants(params));
		} else if (type == 2) {
			model.addAttribute("list", service.searchHospitals(params));
		} else if (type == 3) {
			model.addAttribute("list", service.searchDigitals(params));
		}
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);

		return "/reviewList";
	}
}
