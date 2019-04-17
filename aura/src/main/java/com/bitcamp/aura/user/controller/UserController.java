package com.bitcamp.aura.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/user")
public class UserController {

	@RequestMapping(value="/loginForm")
	public String loginForm() {
		
		return "login";
	}
	
	@RequestMapping(value="/registerForm")
	public String registerForm() {
		
		return "register";
	}
	
	@RequestMapping(value="/forgotForm")
	public String forgotForm() {
		
		return "forgot";
	}
	
}
