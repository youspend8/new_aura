package com.bitcamp.aura.manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bitcamp.aura.user.model.UserVO;
import com.bitcamp.aura.user.service.UserService;
import com.google.gson.Gson;

@RestController
@RequestMapping(value="/api/user")
public class UserRestApi {
	@Autowired
	private UserService service;
	
	@RequestMapping(value="/list")
	public String list() {
		List<UserVO> list = service.getAllUser();
		
		return new Gson().toJson(list);
	}
}
