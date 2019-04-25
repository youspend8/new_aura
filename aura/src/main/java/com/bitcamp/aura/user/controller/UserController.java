package com.bitcamp.aura.user.controller;


import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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

	@RequestMapping(value="/register")
	public String register(@ModelAttribute UserVO uservo,
			String addr,
			String addr_code,
			String addr_Datail) {
		
		
		System.out.println(uservo.getEmail());
		System.out.println(uservo.getPassword());
		System.out.println(uservo.getName());
		System.out.println(uservo.getNickname());
		System.out.println(uservo.getGender());
		System.out.println(uservo.getTel());
		
		
		return "login";
	}
	
	
	@RequestMapping(value="/forgotForm")
	public String forgotForm() {
		
		return "forgot";
	}
	
	@RequestMapping(value="/oauth/naver")
	public String naverLogin(String code, String state) throws IOException {
		String resultPage = "";
		
		UserVO userVo = naverLogin.getUserInfo(naverLogin.getAccessToken(code, state));
		userService.apiLoginCheck(userVo.getUserId());
		
		return resultPage;
	}
	
	@RequestMapping("/oauth/facebook")
	public ModelAndView facebook(String code) {
		String accessToken = facebookLogin.getAccessToken(code);
		String userId = facebookLogin.getUserId(accessToken);
	    UserVO UserInfo = facebookLogin.getUserInfo(accessToken, userId);
	    ModelAndView mav = new ModelAndView();
	    
	    if(userService.apiLoginCheck(UserInfo.getUserId()) == false) {
	    	
	    	mav.addObject("userInfo",UserInfo);
	    	mav.setViewName("addExtraForm");
	    	return mav;
	    }else {
	    	mav.setViewName("main");
	    	return mav;
	    }
	}
	
	//model.addAttribute("UserINfo", userInfo);
	//return "main"
	
	@RequestMapping("/oauth/kakao")
	public ModelAndView kakao(String code) {
		
		ModelAndView mav = new ModelAndView();
		String accessToken = kakaoLogin.getAccessToken(code);
		UserVO kakao_userinfo = kakaoLogin.getUserInfo(accessToken);
		
		
	if(userService.apiLoginCheck(kakao_userinfo.getUserId())) {
		mav.setViewName("main");
		
		return mav;
	}else {
		mav.setViewName("addExtraForm");
		mav.addObject("userInfo", kakao_userinfo);
		
		return mav;
	}
	

	
	        
	
	}
	
	
	
	
	
}