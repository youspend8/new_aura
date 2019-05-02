package com.bitcamp.aura.review.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.aura.review.model.RestaurantSelectParamVO;
import com.bitcamp.aura.review.model.RestaurantVO;
import com.bitcamp.aura.review.model.ReviewVO;

@Mapper
public interface ReviewMapper {
	public int insert(ReviewVO reviewVo);
	public int updateReview(ReviewVO reviewVo);
	public int updateRestaurantReview(ReviewVO reviewVo);
	public int updateHospitalReview(ReviewVO reviewVo);
	public int updateDigitalReview(ReviewVO reviewVo);
	public int delete(int num);
	public ReviewVO selectOneForUpdateByNum(int num);
	public List<RestaurantVO> selectRestaurantsByParams(RestaurantSelectParamVO params);
	public List<ReviewVO> selectHospitalsByParams(RestaurantSelectParamVO params);
	public List<ReviewVO> selectDigitalsByParams(RestaurantSelectParamVO params);
	public HashMap<String, Object> selectByNum(HashMap<String, Object> params);
	public List<ReviewVO> selectAll();
}
