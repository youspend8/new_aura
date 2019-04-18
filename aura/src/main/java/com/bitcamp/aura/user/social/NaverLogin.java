package com.bitcamp.aura.user.social;

import java.io.IOException;

public interface NaverLogin {
	public String getAccessToken(String code, String state) throws IOException;
	public String getUserInfo(String accessToken) throws IOException;
}
