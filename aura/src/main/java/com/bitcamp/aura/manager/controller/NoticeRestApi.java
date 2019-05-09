package com.bitcamp.aura.manager.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.review.service.ReviewService;

@RestController
@RequestMapping(value="/api/notice")
public class NoticeRestApi {
	
	@Autowired
	private ReviewService service;
	
	@RequestMapping(value="/write")
	public boolean getAnno(
			@RequestBody String title,
			@RequestBody String contents,
			@RequestParam("file") MultipartFile[] multipartFiles) {
		
		HashMap<String, Object> params = new HashMap<>();
		
		params.put("title", title);
		params.put("contents", contents);
		
		return service.writeReview(params, multipartFiles) == 1 ? true : false;
	}
	
	@RequestMapping(value="/writeTest")
	public boolean getNotice(
			@RequestBody String title,
			@RequestBody String contents,
			@RequestParam("file") MultipartFile[] multipartFiles) {
		
		HashMap<String, Object> params = new HashMap<>();
		
		params.put("title", title);
		params.put("contents", contents);
		
		return service.writeReview(params, multipartFiles) == 1 ? true : false;
	}
}
