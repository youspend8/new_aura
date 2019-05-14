package com.bitcamp.aura.comment.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bitcamp.aura.comment.model.CommentFileVO;
import com.bitcamp.aura.comment.model.CommentVO;

public interface CommentService {
	public String insert_Comment(MultipartHttpServletRequest comment);
	public String delete_Comment();
	public void update (CommentVO comment,int type);
	public String selectAll_Comment();
	public List<CommentVO> more_Comment(HashMap<String, Object> params);
	public CommentVO selectOne(int comment_Num);
	public List<CommentFileVO> selectFilesByNum(int num);
	public List<CommentVO> selectAllByNum(int postNum);
}
