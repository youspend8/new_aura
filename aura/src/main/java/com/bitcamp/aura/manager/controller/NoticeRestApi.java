package com.bitcamp.aura.manager.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.model.NoticeVO;
import com.bitcamp.aura.notice.service.NoticeService;
import com.bitcamp.aura.notice.service.NoticeServiceImpl;
import com.bitcamp.aura.review.model.ReviewVO;
import com.google.gson.Gson;

@RestController
@RequestMapping(value="/api/notice")
public class NoticeRestApi {
	@Autowired
	private NoticeServiceImpl service;
	
//	@Autowired
//	private 
	
	@RequestMapping(value="/write")
	public boolean getAnno(
			@ModelAttribute NoticeVO notice,
			@RequestParam("file") MultipartFile[] multipartFiles) {
		System.out.println("나오니 "+notice);
		
		return service.writeNotice(notice, multipartFiles) == 1 ? true : false;
	}
	

	
	@RequestMapping(value="/list")
	public String list() throws ParseException {
		List<NoticeVO> notice = service.searchAll();
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		for (int i = 0; i < notice.size(); i++) {
			System.out.println(notice.size());
			sb.append("{\"num\": \"" + notice.get(i).getNum() + "\",");
			sb.append("\"title\": \"" + notice.get(i).getTitle() + "\",");
			sb.append("\"comments\": \"" + 0 + "\",");
			if (i != notice.size() - 1) {
			}
		}
		sb.append("]");
		return sb.toString();
//		return new Gson().toJson(review);
	}
	@RequestMapping(value="/{num}")
	public String getPost(
			@PathVariable("num") int num) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("num", num);
		
		HashMap<NoticeVO, Object> notice = service.searchOne(num);
		StringBuilder sb = new StringBuilder();
		Gson gson = new Gson();
		sb.append(gson.toJson(notice));
		
		System.out.println(sb.toString());
		return sb.toString();
//		return "";
	}
	
	
	
	
	
	
	
	
	

}
