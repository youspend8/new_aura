package com.bitcamp.aura.user.social;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Service;

import com.bitcamp.aura.user.model.UserVO;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class NaverLoginAPI implements NaverLogin{

	@Override
	public UserVO getAccessToken(String code, String state) throws IOException {
		String reqUrl = "https://nid.naver.com/oauth2.0/token?"
				+ "grant_type=authorization_code&"
				+ "client_id=od8MnK4Tb6sAdnv6ZeIT&"
				+ "client_secret=xTaUMV1Bmu&"
				+ "code=" + code + "&"
				+ "state=" + state;
		
		UserVO userVo = new UserVO();
		
		URL url = new URL(reqUrl);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
		
		String result = "";
		String line = "";
		
		while((line = br.readLine()) != null) {
			result += line;
		}
		
		JsonParser json = new JsonParser();
		JsonElement element = json.parse(result);
		
		userVo.setAccessToken((element.getAsJsonObject().get("access_token").getAsString())); 
		userVo.setRefreshToken((element.getAsJsonObject().get("refresh_token").getAsString()));
		
		return userVo;
	}

	@Override
	public UserVO getUserInfo(UserVO userVo) throws IOException {
		String reqUrl = "https://openapi.naver.com/v1/nid/me";
		
		URL url = new URL(reqUrl);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Authorization", "Bearer " + userVo.getAccessToken());
		
		String responseMsg = conn.getResponseMessage();
		int responseCode = conn.getResponseCode();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
		
		String result = "";
		String line = "";
		
		while((line = br.readLine()) != null) {
			result += line;
		}
		
		JsonParser json = new JsonParser();
		JsonElement element = json.parse(result);
		
		JsonObject response = element.getAsJsonObject().get("response").getAsJsonObject();
		
		
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		int gender = -1;
		
		
		if ("M".equals((response.getAsJsonObject().get("gender").getAsString()))) {
			gender = 1;
		} else if ("F".equals((response.getAsJsonObject().get("gender").getAsString()))) {
			gender = 0;
		}

		userVo.setUserId((response.getAsJsonObject().get("id").getAsString()));
		userVo.setProfile((response.getAsJsonObject().get("profile_image").getAsString()));
		userVo.setGender(gender);
		userVo.setEmail((response.getAsJsonObject().get("email").getAsString()));
		userVo.setName((response.getAsJsonObject().get("name").getAsString()));
		userVo.setRegDate(sim.format(new Date()));
		userVo.setRegLocation(3);
		userVo.setIsAdmin(0);
		
		return userVo;
	}

}
