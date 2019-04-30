package com.bitcamp.aura.user.controller;


import java.io.IOException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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

	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userid");
		session.removeAttribute("nickname");
		return "main";
	}
	
	@RequestMapping(value="/registerForm")
	public String registerForm() {
		return "register";
	}

	@RequestMapping(value="/register")
	public String register(@ModelAttribute UserVO uservo,String pwCheck) {
		uservo.setRegLocation(1); 
		uservo.setRegDate(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		userService.join(uservo, pwCheck, 
				uservo.getAddress(),
				uservo.getAddr_code(),
				uservo.getAddr_Detail(),
				uservo.getAddr());
		
		return "login";
	}
	
	@RequestMapping(value="/forgotForm")
	public String forgotForm() {
		
		return "forgot";
	}
	
	@RequestMapping(value="/oauth/naver")
	public ModelAndView naverLogin(HttpSession session,String code, String state) throws IOException {
		ModelAndView model = new ModelAndView();
		UserVO userVo = naverLogin.getUserInfo(naverLogin.getAccessToken(code, state));
		
		if(userService.apiLoginCheck(userVo.getUserId()) == false) {
			model.addObject("userInfo", userVo);
			model.setViewName("addExtraForm");
	    	return model;
	    }else {
	    	model.setViewName("main");
	    	session.setAttribute("nickname", userVo.getNickname());
			session.setAttribute("email", userVo.getEmail());
			System.out.println("닉네임 : " + userVo.getNickname());
			System.out.println("유저 이메일 :" + userVo.getEmail());
			
	    	return model;
	    }
		
	}
	
	@RequestMapping("/oauth/facebook")
	public ModelAndView facebook(HttpSession session,String code) {
		String accessToken = facebookLogin.getAccessToken(code);
		String userId = facebookLogin.getUserId(accessToken);
	    UserVO UserInfo = facebookLogin.getUserInfo(accessToken, userId);
	    ModelAndView mav = new ModelAndView();
	    
	    if(userService.apiLoginCheck(UserInfo.getUserId()) == false) {	    	
	    	mav.addObject("userInfo",UserInfo);
	    	mav.setViewName("addExtraForm");	    	
	    	return mav;
	    }else {
	    	session.setAttribute("nickname", UserInfo.getNickname());
			session.setAttribute("email", UserInfo.getEmail());
			System.out.println("닉네임 : " + UserInfo.getNickname());
			System.out.println("유저 이메일 :" + UserInfo.getEmail());
			
			mav.setViewName("main");
	    	return mav;
	    }
	}
	
	@RequestMapping("/oauth/kakao")
	public ModelAndView kakao(HttpSession session,String code) {

		ModelAndView mav = new ModelAndView();
		String accessToken = kakaoLogin.getAccessToken(code);
		UserVO kakao_userinfo = kakaoLogin.getUserInfo(accessToken);

		if (userService.apiLoginCheck (kakao_userinfo.getUserId())) {
			mav.setViewName("main");
			session.setAttribute("nickname", kakao_userinfo.getNickname());
			session.setAttribute("email", kakao_userinfo.getEmail());
			System.out.println("닉네임 : " + kakao_userinfo.getNickname());
			System.out.println("유저 이메일 :" + kakao_userinfo.getEmail());
			return mav;
		} else {
			mav.setViewName("addExtraForm");
			mav.addObject("userInfo", kakao_userinfo);
			return mav;
		}
		
	}
	
	@RequestMapping("/oauth/google")
	public ModelAndView google(HttpSession session,String code) {
		System.out.println("code 여기는 Controller : " + code);

		ModelAndView mav = new ModelAndView();
		String accessToken = googleLogin.getAccessToken(code);
		UserVO google_userinfo = googleLogin.getUserInfo(accessToken);
		
		System.out.println("google userinfo:"+ google_userinfo);
	
		if (userService.apiLoginCheck(google_userinfo.getUserId())) {
			session.setAttribute("nickname", google_userinfo.getNickname());
			session.setAttribute("email", google_userinfo.getEmail());
			System.out.println("닉네임 : " + google_userinfo.getNickname());
			System.out.println("유저 이메일 :" + google_userinfo.getEmail());

			mav.setViewName("main");
			return mav;
		} else {
			mav.setViewName("addExtraForm");
			mav.addObject("userInfo", google_userinfo);

		}
		return mav;
	}
	
	@RequestMapping("/oauth/register")
	public String oauth_reg (@ModelAttribute UserVO uservo, HttpSession session) {
		session.setAttribute("nickname", uservo.getNickname());
		session.setAttribute("email", uservo.getEmail());
		System.out.println("닉네임 : " + uservo.getNickname());
		System.out.println("유저 아이디 :" + uservo.getEmail());
		
		if(userService.snsLogin(uservo) == true) { //DB에 중복값 X => insert
			return "main";
		}
		else { //DB에 중복값 O => insert X => 바로 로그인시켜주기
			return "main";
		}
	}
	
	@RequestMapping("/oauth/loginResult")
	public String loginResult(HttpSession session, String email, String password) {
		System.out.println("Eamil :"+ email);
		System.out.println("password :"+ password);
		if(userService.login(session, email,password) == true) {
			return "main";
		}else
			return "login";
	}
	
	@RequestMapping("/nickNameCheck")
	@ResponseBody
	public String nickNameCheck(String nickname) {
		System.out.println("nickname : " + nickname);
		if(userService.getUser(nickname) == null) {
			return "true";
		}
		return "false";
	}
	
	@RequestMapping("/emailCheck")
	@ResponseBody
	public String emailCheck(String email) {
		System.out.println(userService.emailCode(email));
		
		return userService.emailCode(email);
	}
	
	@RequestMapping("/emailOverlap")
	@ResponseBody
	public String overlap(String email) {
		if(userService.getUser_email(email) == null) {
			return "true";
		}else
			return "false";
	}
}