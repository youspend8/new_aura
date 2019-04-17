package com.bitcamp.aura.user.service;

import com.bitcamp.aura.user.model.UserVO;

public interface UserService {
	public boolean login (String email, String password);
	public boolean join (UserVO userVo);
	public void modify (UserVO userVo);
	public void withdraw (String nickname);
	public void getUser (String nickname);
	public void getUsers (String nickname);
	public void getAllUser();
}
