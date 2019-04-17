package com.bitcamp.aura.user.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bitcamp.aura.user.model.UserVO;

public interface UserService {
	public boolean login (String email, String password);
	public boolean join (UserVO userVo);
	public void modify (UserVO userVo);
	public void withdraw (String nickname);
	public UserVO getUser (String nickname);
	public List<UserVO> getUsers (String nickname);
	public List<UserVO> getAllUser();
}
