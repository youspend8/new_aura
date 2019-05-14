package com.bitcamp.aura.manager.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.review.model.ReviewVO;
import com.bitcamp.aura.review.service.ReviewService;
import com.google.gson.Gson;

@RestController
@RequestMapping(value="/api/review")
public class ReviewRestApi {
	@Autowired
	private ReviewService service;
	
	@RequestMapping(value="/list")
	public String list() throws ParseException {
		List<ReviewVO> review = service.searchAll();
		StringBuilder sb = new StringBuilder();
		sb.append("[");
		for (int i = 0; i < review.size(); i++) {
			sb.append("{\"num\": \"" + review.get(i).getNum() + "\",");
			sb.append("\"category\": \"" + review.get(i).getType() + "\",");
			sb.append("\"title\": \"" + review.get(i).getTitle() + "\",");
			sb.append("\"addDate\": \"" + review.get(i).getAddDate() + "\",");
			sb.append("\"goods\": \"" + review.get(i).getGoods() + "\",");
			sb.append("\"bookmark\": \"" + review.get(i).getBookmark() + "\",");
			sb.append("\"comments\": \"" + 0 + "\",");
			if (i != review.size() - 1) {
				sb.append("\"readCount\": \"" + review.get(i).getReadCount() + "\"},");
			} else {
				sb.append("\"readCount\": \"" + review.get(i).getReadCount() + "\"}");
			}
		}
		sb.append("]");
		return sb.toString();
//		return new Gson().toJson(review);
	}
	
	@PostMapping(value="/")
	public boolean write(
			@RequestParam HashMap<String, Object> params,
			@RequestParam("file") MultipartFile[] multipartFiles) {
		System.out.println(params);
		service.writeReview(params, multipartFiles);
		return true;
	}
	
	@DeleteMapping(value="/{num}")
	public boolean delete(
			@PathVariable("num") int num) {
		
		return service.deleteReview(num) == 1 ? true : false;
	}
	
	@RequestMapping(value="/{num}/{type}")
	public String getPost(
			@PathVariable("num") int num,
			@PathVariable("type") int type) {
		HashMap<String, Object> params = new HashMap<>();
		System.out.println(1);
		params.put("type", type);
		params.put("num", num);
		
		HashMap<String, Object> review = service.searchByNum(params);
		System.out.println(review);
		StringBuilder sb = new StringBuilder();
		Gson gson = new Gson();
		sb.append(gson.toJson(review));
		System.out.println(sb.toString());
		return sb.toString();
	}
}
