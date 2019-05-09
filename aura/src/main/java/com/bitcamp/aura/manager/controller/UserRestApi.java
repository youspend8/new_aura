package com.bitcamp.aura.manager.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.bitcamp.aura.manager.util.JsonFormatConverter;
import com.bitcamp.aura.user.model.UserVO;
import com.bitcamp.aura.user.service.UserService;
import com.google.gson.Gson;
import com.google.gson.JsonParser;

@RestController
@RequestMapping(value="/api/user")
public class UserRestApi {
	@Autowired
	private UserService userService;
	
	@GetMapping(value="/{nickname}")
	public String getUser(@PathVariable("nickname") String nickname) {
		
		return new Gson().toJson(userService.getUser(nickname));
	}
	
	@GetMapping(value="/list")
	public String list() throws ParseException {
		List<UserVO> list = userService.getAllUser();
		list.forEach(user -> {
			if (user.getDelDate() != null) {
				new JsonFormatConverter().dateFormatConverter(user);
			}
		});
		
		return new Gson().toJson(list);
	}

	
	@GetMapping(value="/withdraw/rollback/{nickname}")
	public boolean deleteRollback(@PathVariable("nickname") String nickname) {
		userService.withdrawRollback(nickname);
		return true;
	}
	
	@PostMapping(value="/withdraw")
	public boolean tempDeleteUser(@RequestBody String msg) {
		String nickname = new JsonParser()
								.parse(msg)
								.getAsJsonObject()
								.get("nickname")
								.getAsString();
		userService.tempWithdraw(nickname);
		return true;
	}
	
	@DeleteMapping(value="/withdraw/{nickname}")
	public boolean deleteUser(@PathVariable("nickname") String nickname) {
		userService.withdraw(nickname);
		return true;
	}
	
	@GetMapping(value="/withdraw")
	public String withdraw() {
		List<UserVO> list = userService.getWithdrawUser();
		list.forEach(user -> {
			if (user.getDelDate() != null) {
				new JsonFormatConverter().dateFormatConverter(user);
			}
		});
		return new Gson().toJson(list);
	}
	
}
