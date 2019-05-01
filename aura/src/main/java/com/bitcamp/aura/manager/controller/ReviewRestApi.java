package com.bitcamp.aura.manager.controller;

import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.TimeZone;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bitcamp.aura.review.model.ReviewVO;
import com.bitcamp.aura.review.service.ReviewService;
import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;

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
		System.out.println(sb.toString());
		
		return sb.toString();
//		return new Gson().toJson(review);
	}
	
	@RequestMapping(value="/{num}/{type}")
	public String getPost(
			@PathVariable("num") int num,
			@PathVariable("type") int type) {
		HashMap<String, Object> params = new HashMap<>();
		params.put("type", type);
		params.put("num", num);
		
		HashMap<String, Object> review = service.searchByNum(params);
		StringBuilder sb = new StringBuilder();
		Gson gson = new Gson();
		sb.append(gson.toJson(review));
		
//		sb.append("{\"num\": \"" + review.get("NUM") + "\",");
//		sb.append("\"category\": \"" + review.get("CATEGORY") + "\",");
//		sb.append("\"title\": \"" + review.get("TITLE") + "\",");
//		sb.append("\"contents\": `" + (String)review.get("CONTENTS") + "`,");
//		sb.append("\"addDate\": \"" + review.get("ADDDATE") + "\",");
//		sb.append("\"goods\": \"" + review.get("GOODS") + "\",");
//		sb.append("\"bookmark\": \"" + review.get("BOOKMARK") + "\",");
//		sb.append("\"comments\": \"" + 0 + "\",");
//		sb.append("\"readCount\": \"" + review.get("READCOUNT") + "\"}");
		System.out.println(sb.toString());
		
		return sb.toString();
	}
}
