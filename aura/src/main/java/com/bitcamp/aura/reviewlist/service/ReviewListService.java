package com.bitcamp.aura.reviewlist.service;

import java.util.List;

import com.bitcamp.aura.reviewlist.model.ReviewListVO;

public interface ReviewListService {
	public ReviewListVO create(ReviewListVO reviewListVo);
	public Iterable<ReviewListVO> createAll(Iterable<ReviewListVO> iterator);
	public ReviewListVO update (ReviewListVO badCateVo);
	public void delete (int num);
	public void deleteAllById(Iterable<ReviewListVO> iterator);
	public void deleteAll();
	public ReviewListVO read (int num);
	public List<ReviewListVO> readAll();
}
