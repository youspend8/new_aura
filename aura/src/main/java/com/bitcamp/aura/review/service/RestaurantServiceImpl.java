package com.bitcamp.aura.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.review.dao.RestaurantMapper;
import com.bitcamp.aura.review.model.RestaurantVO;

@Service
public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	private RestaurantMapper mapper;
	
	@Override
	public List<RestaurantVO> searchAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

}
