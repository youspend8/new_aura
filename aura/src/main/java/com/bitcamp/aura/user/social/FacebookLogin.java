package com.bitcamp.aura.user.social;

public interface FacebookLogin {
	public String getAccessToken(String code);
	public String getUserId(String accessToken);
	public String getUserInfo(String accessToken, String userId);
}
