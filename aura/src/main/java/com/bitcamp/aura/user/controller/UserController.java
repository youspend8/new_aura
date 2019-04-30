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

	@RequestMapping(value="/registerForm")
	public String registerForm() {
		return "register";
	}

	@RequestMapping("/login")
	public String loginResult(HttpSession session, String email, String password) {
		System.out.println("Eamil :"+ email);
		System.out.println("password :"+ password);
		if(userService.login(session, email,password) == true) {
			return "redirect:/main";
		} else
			return "redirect:/user/loginForm";
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
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userid");
		session.removeAttribute("nickname");
		return "redirect:/main";
	}
	
	@RequestMapping(value="/forgotForm")
	public String forgotForm() {
		
		return "forgot";
	}
	
	@RequestMapping(value="/oauth/naver")
	public ModelAndView naverLogin(HttpSession session, String code, String state) throws IOException {
		ModelAndView model = new ModelAndView();
		UserVO userVo = naverLogin.getUserInfo(naverLogin.getAccessToken(code, state));
		
		if(userService.apiLoginCheck(userVo.getUserId()) == false) {
			model.addObject("userInfo", userVo);
			model.setViewName("addExtraForm");
	    	return model;
	    }else {
			userService.apiSession(session, userVo.getUserId());			
	    	model.setViewName("redirect:/main");	
	    	return model;
	    }
		
	}
	//굿
	
	@RequestMapping("/oauth/facebook")
	public ModelAndView facebook(HttpSession session, String code) {
		String accessToken = facebookLogin.getAccessToken(code);
		String userId = facebookLogin.getUserId(accessToken);
	    UserVO UserInfo = facebookLogin.getUserInfo(accessToken, userId);
	    ModelAndView mav = new ModelAndView();
	    
	    if(userService.apiLoginCheck(UserInfo.getUserId()) == false) {	    	
	    	mav.addObject("userInfo",UserInfo);
	    	mav.setViewName("addExtraForm");	    	
	    	return mav;
	    }else {
			userService.apiSession(session, UserInfo.getUserId());			
			mav.setViewName("redirect:/main");
	    	return mav;
	    }
	}
	
	@RequestMapping("/oauth/kakao")
	public ModelAndView kakao(HttpSession session, String code) {

		ModelAndView mav = new ModelAndView();
		String accessToken = kakaoLogin.getAccessToken(code);
		UserVO kakao_userinfo = kakaoLogin.getUserInfo(accessToken);

		if (userService.apiLoginCheck (kakao_userinfo.getUserId())) {
			mav.setViewName("redirect:/main");
			userService.apiSession(session, kakao_userinfo.getUserId());
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
			userService.apiSession(session, google_userinfo.getUserId());
			mav.setViewName("redirect:/main");
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
			return "redirect:/main";
		}
		else { //DB에 중복값 O => insert X => 바로 로그인시켜주기
			return "redirect:/main";
		}
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
		if(userService.getUsers_email(email) == null) {
			//등록된 이메일을 찾앗는대 없을경우는 1 을 리턴해준다
			return "1";
		}else
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