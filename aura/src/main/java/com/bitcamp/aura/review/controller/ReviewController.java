package com.bitcamp.aura.review.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.aura.review.model.ReviewSelectParamVO;
import com.bitcamp.aura.review.service.ReviewService;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

import antlr.collections.List;

@Controller
@RequestMapping(value="/review")
public class ReviewController {

	@Autowired
	private ReviewService service;

	@RequestMapping(value="/list")
	public String list(Model model) {
		model.addAttribute("list", service.searchAll());
		return "/reviewList";
	}
	
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
			@ModelAttribute ReviewSelectParamVO params) {
		
		model.addAttribute("list", service.searchRestaurants(params));
		return "/reviewList";
	}
}
