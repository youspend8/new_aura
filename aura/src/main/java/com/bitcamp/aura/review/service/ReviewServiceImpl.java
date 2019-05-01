package com.bitcamp.aura.review.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.review.common.RestaurantCategory;
import com.bitcamp.aura.review.dao.ReviewFileMapper;
import com.bitcamp.aura.review.dao.ReviewMapper;
import com.bitcamp.aura.review.model.RestaurantSelectParamVO;
import com.bitcamp.aura.review.model.RestaurantVO;
import com.bitcamp.aura.review.model.ReviewFileVO;
import com.bitcamp.aura.review.model.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper mapper;
	@Autowired
	private ReviewFileMapper fileMapper;

	@Override
	public List<ReviewVO> searchDigitals(RestaurantSelectParamVO params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVO> searchHospitals(RestaurantSelectParamVO params) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<RestaurantVO> searchRestaurants(RestaurantSelectParamVO params) {
		// TODO Auto-generated method stub
		return setSearchFile(mapper.selectRestaurantsByParams(params));
	}

	@Override
	public HashMap<String, Object> searchByNum(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		HashMap<String, Object> reviewInfo = mapper.selectByNum(params);
		reviewInfo.put("CATEGORY", RestaurantCategory.values()[((BigDecimal)reviewInfo.get("CATEGORY")).intValue()]);
		List<String> files = new ArrayList<>();
		for (ReviewFileVO r : fileMapper.selectByPostNum((Integer)params.get("num"))) {
			files.add(r.getFilePath());
		}
		reviewInfo.put("FILES", files);
		return reviewInfo;
	}

	@Override
	public List<ReviewVO> searchAll() {
		// TODO Auto-generated method stub
		return setSearchFile(mapper.selectAll());
	}

	@Override
	public <T> List<T> setSearchFile(List<T> list) {
		// TODO Auto-generated method stub
		list.forEach(review -> {
			List<String> files = fileMapper.selectByPostNum(((ReviewVO) review).getNum())
					.stream()
					.map(e -> e.getFilePath())
					.collect(Collectors.toList());
			((ReviewVO) review).setFiles(files);
		});
		System.out.println(list);
		return StreamSupport.stream(list.spliterator(), true).collect(Collectors.toList());
	}
}
