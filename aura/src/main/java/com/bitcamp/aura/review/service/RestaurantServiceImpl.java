package com.bitcamp.aura.review.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.review.dao.RestaurantMapper;
import com.bitcamp.aura.review.dao.ReviewFileMapper;
import com.bitcamp.aura.review.model.RestaurantVO;
import com.bitcamp.aura.review.model.ReviewVO;

@Service
public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	private RestaurantMapper mapper;
	@Autowired
	private ReviewFileMapper fileMapper;
	
	@Override
	public List<RestaurantVO> searchAll() {
		// TODO Auto-generated method stub
		Iterable<RestaurantVO> ite = mapper.selectAll();
//		ite.forEach(review -> {
//			List<String> files = fileMapper.selectByPostNum(review.getNum())
//					.stream()
//					.map(e -> e.getFilePath())
//					.collect(Collectors.toList());
//			review.setFiles(files);
//		});
		return StreamSupport.stream(ite.spliterator(), true).collect(Collectors.toList());
	}

}
