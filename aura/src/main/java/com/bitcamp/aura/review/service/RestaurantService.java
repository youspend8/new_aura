package com.bitcamp.aura.review.service;

import java.util.HashMap;
import java.util.List;

import com.bitcamp.aura.review.model.ReviewSelectParamVO;
import com.bitcamp.aura.review.model.ReviewVO;

public interface RestaurantService {
	public List<HashMap<String, Object>> searchAll();
	public List<ReviewVO> searchRestaurant(ReviewSelectParamVO params);
}
