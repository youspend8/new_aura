package com.bitcamp.aura.category.service;

import java.util.List;

import com.bitcamp.aura.category.model.ReviewCategoryVO;

public interface ReviewCategoryService {
	public ReviewCategoryVO create (ReviewCategoryVO likeCateVo);
	public Iterable<ReviewCategoryVO> createAll (Iterable<ReviewCategoryVO> iterater);
	public ReviewCategoryVO update (ReviewCategoryVO likeCateVo);
	public void delete (int num);
	public void deleteAll();
	public ReviewCategoryVO read (int num);
	public List<ReviewCategoryVO> readAll();
}
