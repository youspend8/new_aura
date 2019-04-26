package com.bitcamp.aura.user.controller;


import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.codec.multipart.SynchronossPartHttpMessageReader;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bitcamp.aura.user.model.UserVO;
import com.bitcamp.aura.user.service.UserServiceImpl;
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
	@Autowired
	private GoogleLoginAPI googleLogin;
	
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
	public String register(@ModelAttribute UserVO uservo,String pwCheck,String addr_Detail) {
		uservo.setRegLocation(1);
		uservo.setRegDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		userService.join(uservo, pwCheck, 
				(String)uservo.getAddress(),
				(String)uservo.getAddr_code(),
				(String)uservo.getAddr_Detail(),
				(String)uservo.getAddr());
		
		return "login";
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
	
	@RequestMapping("/oauth/kakao")
	public ModelAndView kakao(String code) {

		ModelAndView mav = new ModelAndView();
		String accessToken = kakaoLogin.getAccessToken(code);
		UserVO kakao_userinfo = kakaoLogin.getUserInfo(accessToken);

		if (userService.apiLoginCheck(kakao_userinfo.getUserId())) {
			mav.setViewName("main");

			return mav;
		} else {
			mav.setViewName("addExtraForm");
			mav.addObject("userInfo", kakao_userinfo);
			return mav;
		}
		
	}
	
	@RequestMapping("/oauth/google")
	public ModelAndView google(String code) {
		System.out.println("code 여기는 Controller : " + code);

		ModelAndView mav = new ModelAndView();
		String accessToken = googleLogin.getAccessToken(code);
		UserVO google_userinfo = googleLogin.getUserInfo(accessToken);
		
		
		
		System.out.println("google userinfo:"+ google_userinfo);
//		if (userService.apiLoginCheck(google_userinfo.getUserId())) {
//			mav.setViewName("main");
//			return mav;
//		} else {
//			mav.setViewName("addExtraForm");
//			mav.addObject("userInfo", google_userinfo);
//		}
		return mav;

	}
	
	
	@RequestMapping("/oauth/register")
	public String oauth_reg (@ModelAttribute UserVO uservo,HttpSession session) {
		if(userService.snsLogin(uservo) == true) { //DB에 중복값 X => insert
			return "main";
		}
		else { //DB에 중복값 O => insert X => 바로 로그인시켜주기
			return "main";
		}
	}
}