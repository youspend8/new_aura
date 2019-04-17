package com.bitcamp.aura.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.aura.user.model.UserVO;

@Mapper
public interface UserMapper {
	public List<UserVO> selectAll();
}
