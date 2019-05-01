package com.bitcamp.aura.comment.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bitcamp.aura.comment.service.CommentServicelmpl;

@Controller
@RequestMapping(value="/comment")
public class CommentController {
	
	@Autowired
	CommentServicelmpl commentService;
	
	@RequestMapping(value="/list")
	public String list() {
		return "reviewList";
	}
	
	@RequestMapping(value="/post")
	public String post() {
		return "reviewPost";
	}
	
	@RequestMapping(value="/write")
	public String write(MultipartHttpServletRequest comment) {
		commentService.insert_Comment(comment);
		
		return "main";
	}

}
