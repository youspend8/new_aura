package com.bitcamp.aura.user.controller;


import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.aura.user.service.UserServiceImpl;
import com.bitcamp.aura.user.social.FacebookLogin;
import com.bitcamp.aura.user.social.FacebookLoginAPI;
import com.bitcamp.aura.user.social.GoogleLoginAPI;
import com.bitcamp.aura.user.social.KakaoLoginAPI;
import com.bitcamp.aura.user.social.NaverLoginAPI;


@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	UserServiceImpl userService = new UserServiceImpl();
	
	@Autowired
	private NaverLoginAPI naverLogin;
	
	@Autowired
	private FacebookLoginAPI facebookLogin;
	
	@Autowired
	private KakaoLoginAPI kakaoLogin;
	
	@RequestMapping(value="/loginForm")
	public String loginForm(Model model) {
		model.addAttribute("state", new BigInteger(130, new SecureRandom()).toString());
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
	
	@RequestMapping(value="/oauth/naver")
	public ModelAndView naverLogin(String code, String state) throws IOException {
		ModelAndView model = new ModelAndView();
		UserVO userVo = naverLogin.getUserInfo(naverLogin.getAccessToken(code, state));
		
		
		if(userService.apiLoginCheck(userVo.getUserId()) == false) {
			model.addObject("userInfo", userVo);
			model.setViewName("addExtraForm");
	    	return model;
	    }else {
	    	model.setViewName("main");
	    	return model;
	    }
		
	}
	
	@RequestMapping("/oauth/facebook")
	public ModelAndView facebook(String code) {
		String accessToken = facebookLogin.getAccessToken(code);
		String userId = facebookLogin.getUserId(accessToken);
	    String UserInfo = facebookLogin.getUserInfo(accessToken, userId);
	        
		return "login";
	}
	
	@RequestMapping("/oauth/google")
	public String google(String code) {
		
		String accessToken = googleLogin.getAccessToken(code);
		String userId = googleLogin.getUserId(accessToken);
	    String UserInfo = googleLogin.getUserInfo(accessToken, userId);
	        
		return "login";
	}
	
	
	
	
	
	
}