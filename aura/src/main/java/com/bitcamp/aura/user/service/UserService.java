package com.bitcamp.aura.user.service;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.bitcamp.aura.user.model.UserVO;

public interface UserService {
	public boolean apiLoginCheck(String userid);
	public boolean snsLogin(UserVO uservo);
	public boolean login (String email, String password);
	public boolean join (UserVO userVo, String pwCheck,
			String addr,
			String addr_code,
			String addr_Detail,
			String address);
	public void modify (UserVO userVo);
	public void withdraw (String nickname);
	public UserVO getUser (String nickname);
	public List<UserVO> getUsers (String nickname);
	public List<UserVO> getAllUser();
	public String emailCode(String code);
}
