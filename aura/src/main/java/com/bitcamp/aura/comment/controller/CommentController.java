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
		
//		Arrays.asList(multipartFiles).forEach(file -> System.out.println(file));
//		
//		File file = new File(new StringBuilder()
//				.append("C:/app/")
//				.append(System.currentTimeMillis() + "_")
//				.append(multipartFiles[0].getOriginalFilename())
//				.toString());
//		
//		byte[] b = multipartFiles[0].getBytes();
//		FileOutputStream fs = new FileOutputStream(file);
//		fs.write(b);
//		fs.flush();
		
//		System.out.println(file);
		
		
//		Iterator<String> files = multi.getFileNames();
//		
//		while(files.hasNext()) {
//			String up = files.next();
//			MultipartFile mfile=multi.getFile(up);
//			System.out.println(mfile.getOriginalFilename());
//		}
////		commentService.insert_Comment(comment);
		
		return "main";
	}

}
