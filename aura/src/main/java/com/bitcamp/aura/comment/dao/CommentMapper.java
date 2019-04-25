package com.bitcamp.aura.comment.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.aura.comment.model.CommentVO;


@Mapper
public interface CommentMapper {
	public int insert (CommentVO comment);
	public int update (CommentVO comment);
	public int delete (String nickname);
	public CommentVO selectOne (String nickname);
	public List<CommentVO> selectAll();
}
