package com.bitcamp.aura.review.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.review.dao.ReviewFileMapper;
import com.bitcamp.aura.review.dao.ReviewMapper;

@Service
public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	private ReviewMapper mapper;
	@Autowired
	private ReviewFileMapper fileMapper;

//	@Override
//	public List<ReviewVO> searchByParams() {
//		// TODO Auto-generated method stub
//		Iterable<ReviewVO> ite = mapper.selectAll();
//		ite.forEach(review -> {
//			List<String> files = fileMapper.selectByPostNum(review.getNum())
//					.stream()
//					.map(e -> e.getFilePath())
//					.collect(Collectors.toList());
//			review.setFiles(files);
//		});
//		return StreamSupport.stream(ite.spliterator(), true).collect(Collectors.toList());
//	}
	
	@Override
	public List<HashMap<String, Object>> searchAll() {
		// TODO Auto-generated method stub
		Iterable<HashMap<String, Object>> ite = mapper.selectAll();
		ite.forEach(review -> {
			List<String> files = fileMapper.selectByPostNum(((BigDecimal)review.get("NUM")).intValue())
					.stream()
					.map(e -> e.getFilePath())
					.collect(Collectors.toList());
			review.put("files", files);
		});
		return StreamSupport.stream(ite.spliterator(), true).collect(Collectors.toList());
	}

}
