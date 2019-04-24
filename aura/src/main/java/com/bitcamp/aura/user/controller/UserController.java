package com.bitcamp.aura.user.controller;


import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bitcamp.aura.user.model.UserVO;
import com.bitcamp.aura.user.service.UserServiceImpl;
import com.bitcamp.aura.user.social.FacebookLoginAPI;
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
	public String naverLogin(String code, String state) throws IOException {
		HashMap<String, Object> userInfo = naverLogin.getUserInfo(naverLogin.getAccessToken(code, state)); 
		
		return "login";
	}
	
	@RequestMapping("/oauth/facebook")
	public String facebook(String code) {
		String accessToken = facebookLogin.getAccessToken(code);
		String userId = facebookLogin.getUserId(accessToken);
	    UserVO UserInfo = facebookLogin.getUserInfo(accessToken, userId);
	    
	    if(userService.loginAPI(UserInfo.getUserId()) == false) {
	    	return "";
	    }else {
	    	return "login";
	    }
	    
	}
	
	@RequestMapping("/oauth/kakao")
	public String kakao(String code) {

		String accessToken = kakaoLogin.getAccessToken(code);
		UserVO kakao_userinfo = kakaoLogin.getUserInfo(accessToken);
		System.out.println("userinfo: "+kakao_userinfo);
		
	

	
	        
		return "login";
	}
	
	
	
	
	
}