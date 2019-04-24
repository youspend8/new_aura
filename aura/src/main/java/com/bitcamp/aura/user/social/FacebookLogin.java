package com.bitcamp.aura.user.social;

import java.util.HashMap;

import com.bitcamp.aura.user.model.UserVO;

public interface FacebookLogin {
	public String getAccessToken(String code);
	public String getUserId(String accessToken);
	public UserVO getUserInfo(String accessToken, String userId);
}
