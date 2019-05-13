package com.bitcamp.aura.comment.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

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
	public String update(int commentNum, int type) {
	
	 CommentVO comment=commentService.selectOne(commentNum);
	 commentService.update(comment, type);
	 
		return "1";
	}
	
	@RequestMapping(value="/write")
	@ResponseBody
	public String write(MultipartHttpServletRequest multipartFiles) throws IOException {
		String result = commentService.insert_Comment(multipartFiles);
		
		return result;
	}
	
	@RequestMapping(value="/more")
	@ResponseBody
	public List<CommentVO> commentMore(@RequestParam HashMap<String, Object> params){
		return commentService.more_Comment(params);
	}

}
