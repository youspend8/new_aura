package com.bitcamp.aura.review.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.aura.review.model.ReviewSelectParamVO;
import com.bitcamp.aura.review.model.ReviewVO;

@Mapper
public interface ReviewMapper {
	public int insert(ReviewVO reviewVo);
	public int update(ReviewVO reviewVo);
	public int delete(int num);
	public List<ReviewVO> selectRestaurantsByParams(ReviewSelectParamVO params);
	public List<ReviewVO> selectHospitalsByParams(ReviewSelectParamVO params);
	public List<ReviewVO> selectDigitalsByParams(ReviewSelectParamVO params);
	public HashMap<String, Object> selectByNum(HashMap<String, Object> params);
	public List<ReviewVO> selectAll();
}
