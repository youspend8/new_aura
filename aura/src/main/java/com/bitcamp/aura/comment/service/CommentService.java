package com.bitcamp.aura.comment.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bitcamp.aura.comment.model.CommentFileVO;
import com.bitcamp.aura.comment.model.CommentVO;

public interface CommentService {
	public String insert_Comment(MultipartHttpServletRequest comment);
	public String delete_Comment();
	public String update_Comment();
	public String selectAll_Comment();
	public List<CommentVO> more_Comment(HashMap<String, Object> params);
	public List<CommentFileVO> selectFilesByNum(int num);
	public List<CommentVO> selectAllByNum(int postNum);
}
