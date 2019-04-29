package com.bitcamp.aura.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bitcamp.aura.review.model.ReviewVO;
import com.bitcamp.aura.review.service.ReviewService;
import com.google.gson.Gson;

@RestController
@RequestMapping(value="/api/review/")
public class ReviewRestApi {
	@Autowired
	private ReviewService service;
	
	@RequestMapping(value="/list")
	public String list() {
		List<ReviewVO> review = service.searchAll();
//		StringBuilder sb = new StringBuilder();
//		sb.append("{\"data\": [");
//		sb.append("{\"num\": ");
		
		return new Gson().toJson(review);
	}
}
