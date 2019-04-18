package com.bitcamp.aura.category.service;

import java.util.List;

import com.bitcamp.aura.category.model.BadCategoryVO;

public interface BadCategoryService {
	public int create (BadCategoryVO badCateVo);
	public int update (BadCategoryVO badCateVo);
	public int delete (int num);
	public BadCategoryVO read (int num);
	public List<BadCategoryVO> readAll();
}
