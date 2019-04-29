package com.bitcamp.aura.review.service;

import java.util.HashMap;
import java.util.List;

import com.bitcamp.aura.review.model.ReviewSelectParamVO;
import com.bitcamp.aura.review.model.ReviewVO;

public interface ReviewService {
	public List<ReviewVO> searchRestaurants(ReviewSelectParamVO params);
	public List<ReviewVO> searchDigitals(ReviewSelectParamVO params);
	public List<ReviewVO> searchHospitals(ReviewSelectParamVO params);
	public HashMap<String, Object> searchByNum(int num);
	public List<ReviewVO> searchAll();
}
