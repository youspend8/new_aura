package com.bitcamp.aura.comment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/comment")
public class CommentController {

	@RequestMapping(value="/list")
	public String list() {
		return "reviewList";
	}
	
	@RequestMapping(value="/post")
	public String post() {
		return "reviewPost";
	}

}
