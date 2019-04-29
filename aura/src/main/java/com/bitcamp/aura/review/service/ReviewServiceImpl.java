package com.bitcamp.aura.review.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.review.dao.ReviewFileMapper;
import com.bitcamp.aura.review.dao.ReviewMapper;
import com.bitcamp.aura.review.model.RestaurantVO;
import com.bitcamp.aura.review.model.ReviewSelectParamVO;
import com.bitcamp.aura.review.model.ReviewVO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper mapper;
	@Autowired
	private ReviewFileMapper fileMapper;

	@Override
	public List<ReviewVO> searchDigitals(ReviewSelectParamVO params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVO> searchHospitals(ReviewSelectParamVO params) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<ReviewVO> searchRestaurants(ReviewSelectParamVO params) {
		// TODO Auto-generated method stub
		Iterable<ReviewVO> ite = mapper.selectRestaurantsByParams(params);
		ite.forEach(review -> {
			List<String> files = fileMapper.selectByPostNum(review.getNum())
					.stream()
					.map(e -> e.getFilePath())
					.collect(Collectors.toList());
			review.setFiles(files);
		});
		return StreamSupport.stream(ite.spliterator(), true).collect(Collectors.toList());
	}

	@Override
	public HashMap<String, Object> searchByNum(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVO> searchAll() {
		// TODO Auto-generated method stub
		Iterable<ReviewVO> ite = mapper.selectAll();
		
		System.out.println(ite);
		
		/*	Jsp페이지로 넘겨줄 데이터에 파일 데이터 추가	*/
		ite.forEach(review -> {
			List<String> files = fileMapper.selectByPostNum(review.getNum())
					.stream()
					.map(e -> e.getFilePath())
					.collect(Collectors.toList());
			review.setFiles(files);
		});
		
		System.out.println(ite);
		return StreamSupport.stream(ite.spliterator(), true).collect(Collectors.toList());
	}
	
}
