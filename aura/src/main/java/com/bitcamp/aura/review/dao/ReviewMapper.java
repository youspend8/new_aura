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
	public ReviewVO selectByNum(int num);
	public List<HashMap<String, Object>> selectByParams(ReviewSelectParamVO params);
	public List<HashMap<String, Object>> selectAll();
}
