package com.bitcamp.aura.review.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.aura.review.model.ReviewVO;
import com.bitcamp.aura.review.model.SearchParams;

@Mapper
public interface ReviewMapper {
	public int insert(HashMap<String, Object> params);
	public int updateReview(ReviewVO reviewVo);
	public int updateRestaurantReview(ReviewVO reviewVo);
	public int updateHospitalReview(ReviewVO reviewVo);
	public int updateDigitalReview(ReviewVO reviewVo);
	public int delete(int num);
	public ReviewVO selectOneForUpdateByNum(int num);
	public List<ReviewVO> selectRestaurantsByParams(SearchParams params);
	public List<ReviewVO> selectHospitalsByParams(SearchParams params);
	public List<ReviewVO> selectDigitalsByParams(SearchParams params);
	public HashMap<String, Object> selectByNum(HashMap<String, Object> params);
	public List<ReviewVO> selectAll();
}
