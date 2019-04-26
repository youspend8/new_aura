package com.bitcamp.aura.review.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.aura.review.model.ReviewFileVO;

@Mapper
public interface ReviewFileMapper {
	public int insert(ReviewFileVO reviewFile);
	public int update(ReviewFileVO reviewFile);
	public int deleteByNum(int num);
	public int deleteByPostNum(int postNum);
	public ReviewFileVO selectByNum(int num);
	public List<ReviewFileVO> selectByPostNum(int postNum);
	public List<ReviewFileVO> selectAll();
}
