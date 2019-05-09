package com.bitcamp.aura.category.service;

import java.util.List;

import com.bitcamp.aura.category.model.RestaurantCategoryVO;

public interface RestaurantCategoryService {
	public RestaurantCategoryVO create (RestaurantCategoryVO restCateVo);
	public Iterable<RestaurantCategoryVO> createAll(Iterable<RestaurantCategoryVO> iterator);
	public RestaurantCategoryVO update (RestaurantCategoryVO restCateVo);
	public void delete (int num);
	public void deleteAll();
	public RestaurantCategoryVO read (int num);
	public List<RestaurantCategoryVO> readAll();
}
