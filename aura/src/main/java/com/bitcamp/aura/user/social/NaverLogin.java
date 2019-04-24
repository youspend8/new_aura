package com.bitcamp.aura.user.social;

import java.io.IOException;
import java.util.HashMap;

public interface NaverLogin {
	public HashMap<String, Object> getAccessToken(String code, String state) throws IOException;
	public HashMap<String, Object> getUserInfo(HashMap<String, Object> userInfo) throws IOException;
}
