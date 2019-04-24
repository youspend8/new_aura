package com.bitcamp.aura.category.service;

import java.util.List;

import com.bitcamp.aura.category.model.BadCategoryVO;

public interface BadCategoryService {
	public BadCategoryVO create (BadCategoryVO badCateVo);
	public Iterable<BadCategoryVO> createAll(Iterable<BadCategoryVO> iterator);
	public BadCategoryVO update (BadCategoryVO badCateVo);
	public void delete (int num);
	public void deleteAll();
	public BadCategoryVO read (int num);
	public List<BadCategoryVO> readAll();
}
