package com.bitcamp.aura.review.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.review.model.SearchParams;
import com.bitcamp.aura.review.model.RestaurantVO;
import com.bitcamp.aura.review.model.ReviewVO;

public interface ReviewService {
	public int writeReview(HashMap<String, Object> params, MultipartFile[] multipartFiles);
	public List<RestaurantVO> searchRestaurants(SearchParams params);
	public List<ReviewVO> searchDigitals(SearchParams params);
	public List<ReviewVO> searchHospitals(SearchParams params);
	public HashMap<String, Object> searchByNum(HashMap<String, Object> params);
	public List<ReviewVO> searchAll();
	public <T> List<T> setSearchFile(List<T> list);
}
