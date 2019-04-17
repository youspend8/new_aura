package com.bitcamp.aura.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/notice")
public class NoticeController {
	
	@RequestMapping(value="/list")
	public String loginForm() {
		
		return "notice";
	}
	
}
