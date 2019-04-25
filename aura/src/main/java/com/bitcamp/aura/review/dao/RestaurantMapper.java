package com.bitcamp.aura.review.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.aura.review.model.RestaurantVO;

@Mapper
public interface RestaurantMapper {
	public int insert(RestaurantVO restaurant);
	public int update(RestaurantVO restaurant);
	public int delete(int num);
	public List<RestaurantVO> selectByNum(int num);
	public List<RestaurantVO> selectAll();
}
