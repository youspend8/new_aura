package com.bitcamp.aura.comment.controller;


import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bitcamp.aura.comment.model.CommentVO;
import com.bitcamp.aura.comment.service.CommentService;

@Controller
@RequestMapping(value="/comment")
public class CommentController {
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping(value="/list")
	public String list() {
		return "reviewList";
	}
	
	@RequestMapping(value="/post")
	public String post() {
		return "reviewPost";
	}
	
	@RequestMapping(value="/update")
	@ResponseBody
	public String update(int commentNum, int type,  HttpSession session) {
	
	 CommentVO comment=commentService.selectOne(commentNum);
	 commentService.update(comment, type);
	 HashMap<String, Object> param = new HashMap<>();
	 param.put("comment_num", commentNum); 
	 param.put("nickname", session.getAttribute("nickname"));
	 System.out.println("@#$%@#$@#^#$%@#$"+param);
	 commentService.likeControll(param, type);
	 
		return "1";
	}
	
	@RequestMapping(value="/write")
	public String write(MultipartHttpServletRequest multipartFiles) throws IOException {
		commentService.insert_Comment(multipartFiles);
		
		return "main";
	}

}
