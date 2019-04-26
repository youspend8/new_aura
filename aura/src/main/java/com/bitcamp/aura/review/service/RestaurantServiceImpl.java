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
public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	private ReviewMapper mapper;
	@Autowired
	private ReviewFileMapper fileMapper;

	@Override
	public List<ReviewVO> searchRestaurant(ReviewSelectParamVO params) {
		// TODO Auto-generated method stub
		Iterable<RestaurantVO> ite = mapper.selectRestaurantsByParams(params);
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
	public List<HashMap<String, Object>> searchAll() {
		// TODO Auto-generated method stub
		Iterable<HashMap<String, Object>> ite = mapper.selectAll();
		
		/*	key값을 소문자로 변경하는 코드 (임시)	*/
		List<HashMap<String, Object>> temp = new ArrayList<>();
		
		ite.forEach(e -> {
			HashMap<String, Object> tempMap = new HashMap<>();
			e.entrySet().forEach(item -> {
				tempMap.put(item.getKey().toLowerCase(), item.getValue());
			});
			temp.add(tempMap);
		});
		ite = temp;
		
		/*	Jsp페이지로 넘겨줄 데이터에 파일 데이터 추가	*/
		ite.forEach(review -> {
			List<String> files = fileMapper.selectByPostNum(((BigDecimal)review.get("num")).intValue())
					.stream()
					.map(e -> e.getFilePath())
					.collect(Collectors.toList());
			review.put("files", files);
		});
		System.out.println(ite);
		return StreamSupport.stream(ite.spliterator(), true).collect(Collectors.toList());
	}

}
