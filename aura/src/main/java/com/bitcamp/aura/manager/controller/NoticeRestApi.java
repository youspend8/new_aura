package com.bitcamp.aura.manager.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.model.NoticeVO;
import com.bitcamp.aura.notice.service.NoticeService;
import com.google.gson.Gson;

@RestController
@RequestMapping(value="/api/notice")
public class NoticeRestApi {
	
	@Autowired
	private NoticeService service; 
	
	@RequestMapping(value="/write")
	public boolean getAnno(
			@ModelAttribute NoticeVO notice,
			@RequestParam("file") MultipartFile[] multipartFiles) {
		
		return service.writeNotice(notice, multipartFiles) == 1 ? true : false;
	}
	
	@RequestMapping(value="/list")
	public String list() throws ParseException {
		List<NoticeVO> notice = service.searchAll();
		
		return new Gson().toJson(notice);
	}
	
	@RequestMapping(value="/{num}", method = {RequestMethod.GET, RequestMethod.POST})
	public String getPost(
			HttpServletRequest request,
			@PathVariable("num") int num) {
		HashMap<String, Object> notice = service.searchOne(num);
		StringBuilder sb = new StringBuilder();
		Gson gson = new Gson();
		sb.append(gson.toJson(notice));
		
		return sb.toString();
	}
	
	@DeleteMapping(value="/{num}")
	public boolean delete(@PathVariable("num") int num) {
		
		return service.deleteNotice(num) == 1 ? true : false;
	}
}
