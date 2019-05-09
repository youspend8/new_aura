package com.bitcamp.aura.manager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.model.NoticeVO;
import com.bitcamp.aura.notice.service.NoticeServiceImpl;

@RestController
@RequestMapping(value="/api/notice")
public class NoticeRestApi {
	@Autowired
	private NoticeServiceImpl service;
	
	@RequestMapping(value="/write")
	public boolean getAnno(
			@ModelAttribute NoticeVO notice,
			@RequestParam("file") MultipartFile[] multipartFiles) {
		System.out.println(notice);
		
		return service.writeNotice(notice, multipartFiles) == 1 ? true : false;
	}
}
