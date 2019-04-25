package com.bitcamp.aura.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@RequestMapping(value="/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/main")
	public String main() {
		
		return "main";
	}
	
	@RequestMapping(value="/manager/page/gogo/gimoddi")
	public String manager() {
		
		return "redirect:http://localhost:3000/";
	}
	
}


