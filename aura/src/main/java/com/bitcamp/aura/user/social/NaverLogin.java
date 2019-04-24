package com.bitcamp.aura.user.social;

import java.io.IOException;

import com.bitcamp.aura.user.model.UserVO;

public interface NaverLogin {
	public UserVO getAccessToken(String code, String state) throws IOException;
	public UserVO getUserInfo(UserVO userVo) throws IOException;
}
