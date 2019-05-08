package com.bitcamp.aura.comment.controller;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
	public String write(
			@RequestParam HashMap<String, Object> params,
			@RequestParam("files") MultipartFile[] multipartFiles) throws IOException {
		System.out.println(params);
	
		
		return "main";
	}

}
