package com.bitcamp.aura.reviewlist.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.repository.CrudRepository;

import com.bitcamp.aura.reviewlist.model.ReviewListSelectParamsVO;
import com.bitcamp.aura.reviewlist.model.ReviewListVO;
import com.bitcamp.aura.user.model.UserVO;

@Mapper
public interface ReviewListMapper {
	public int insert (ReviewListVO reviewListVo);
	public int deleteByNum (int num);
	public int deleteAllByParams (ReviewListSelectParamsVO params);
	public ReviewListVO selectByNum(int num);
	public ReviewListVO selectByParams(ReviewListSelectParamsVO params);
	public List<ReviewListVO> selectByNickname(String nickname);
	public List<ReviewListVO> selectAllByParams(ReviewListSelectParamsVO params);
	public List<ReviewListVO> selectAll();
}
