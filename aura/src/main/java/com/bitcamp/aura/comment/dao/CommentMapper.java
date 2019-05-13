package com.bitcamp.aura.comment.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.bitcamp.aura.comment.model.CommentFileVO;
import com.bitcamp.aura.comment.model.CommentVO;


@Mapper
public interface CommentMapper {
	public int insert (CommentVO comment);
	public int insert_File (CommentFileVO comment);
<<<<<<< HEAD
	public int update (CommentVO comment);
=======
	public void update (CommentVO comment);
//	public int update_Comment_File (CommentFileVO comment);
>>>>>>> branch 'master' of https://github.com/youspend8/new_aura.git
	public int delete (String nickname);
<<<<<<< HEAD
	public CommentVO selectOne (String nickname);
	public List<CommentVO> moreComment(HashMap<String, Object> params);
=======
	public CommentVO selectOne (int comment_Num);
>>>>>>> branch 'master' of https://github.com/youspend8/new_aura.git
	public List<CommentFileVO> selectFilesByNum(int num);
	public List<CommentVO> selectAll();
	public List<CommentVO> selectAllByNum(int postNum);
}
