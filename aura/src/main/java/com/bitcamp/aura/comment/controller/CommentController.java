package com.bitcamp.aura.comment.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping(value="/write")
	public String write(MultipartHttpServletRequest multipartFiles) throws IOException {
		commentService.insert_Comment(multipartFiles);
		
		return "main";
	}
	
	@RequestMapping(value="/more")
	@ResponseBody
	public List<CommentVO> commentMore(@RequestParam HashMap<String, Object> params){
		return commentService.more_Comment(params);
	}

}
