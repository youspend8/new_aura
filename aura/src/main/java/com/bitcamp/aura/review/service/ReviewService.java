package com.bitcamp.aura.review.service;

import java.util.HashMap;
import java.util.List;

import com.bitcamp.aura.review.model.RestaurantSelectParamVO;
import com.bitcamp.aura.review.model.RestaurantVO;
import com.bitcamp.aura.review.model.ReviewVO;

public interface ReviewService {
	public List<RestaurantVO> searchRestaurants(RestaurantSelectParamVO params);
	public List<ReviewVO> searchDigitals(RestaurantSelectParamVO params);
	public List<ReviewVO> searchHospitals(RestaurantSelectParamVO params);
	public HashMap<String, Object> searchByNum(HashMap<String, Object> params);
	public List<ReviewVO> searchAll();
	public <T> List<T> setSearchFile(List<T> list);
}
