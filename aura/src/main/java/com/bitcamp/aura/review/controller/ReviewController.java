package com.bitcamp.aura.review.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bitcamp.aura.review.model.RestaurantSelectParamVO;
import com.bitcamp.aura.review.service.ReviewService;
import com.google.gson.Gson;

@Controller
@RequestMapping(value="/review")
public class ReviewController {

	@Autowired
	private ReviewService service;

	@RequestMapping(value="/post")
	public String post(int num, int type, Model model) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("type", type);
		params.put("num", num);
		HashMap<String, Object> reviewInfo = service.searchByNum(params);
		model.addAttribute("reviewInfo", reviewInfo);

		Gson gson = new Gson();
		HashMap<String, Object> list = gson.fromJson((String)reviewInfo.get("MENU"), HashMap.class);
		model.addAttribute("menu", list.get("menu"));
		
		return "reviewPost";
	}
	
	@RequestMapping(value="/write")
	public String write() {
		
		return "";
	}
	
	@RequestMapping(value="/file")
	public String file() {
		
		return "reviewPost";
	}
	
	@RequestMapping(value="/search")
	public String search(Model model,
			@RequestParam("type") int type,
			@RequestParam("keyword") String keyword,
			@ModelAttribute RestaurantSelectParamVO modelParams) {
		
		if (type == 1) {
			model.addAttribute("list", service.searchRestaurants(modelParams));
		} else if (type == 2) {
			model.addAttribute("list", service.searchHospitals(modelParams));
		} else if (type == 3) {
			model.addAttribute("list", service.searchDigitals(modelParams));
		}
		model.addAttribute("type", type);
		model.addAttribute("keyword", keyword);
		
		return "/reviewList";
	}
}
