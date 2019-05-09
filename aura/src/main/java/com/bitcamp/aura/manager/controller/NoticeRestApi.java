package com.bitcamp.aura.manager.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.model.NoticeVO;
import com.bitcamp.aura.notice.service.NoticeService;
import com.bitcamp.aura.review.service.ReviewService;

@RestController
@RequestMapping(value="/api/notice")
public class NoticeRestApi {
	
	
	@Autowired
	private NoticeService service;
	
	@RequestMapping(value="/write")
	public boolean getAnno(
			@RequestBody String title,
			@RequestBody String contents,
			@RequestParam("file") MultipartFile[] multipartFiles) {
		
		NoticeVO noticevo = new NoticeVO();
		noticevo.setTitle(title);
		noticevo.setContents(contents);
		
		return service.writeNotice(noticevo, multipartFiles) == 1 ? true : false;
	}
}
