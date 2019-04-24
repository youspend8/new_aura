package com.bitcamp.aura.user.social;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class NaverLoginAPI implements NaverLogin{

	@Override
	public HashMap<String, Object> getAccessToken(String code, String state) throws IOException {
		String reqUrl = "https://nid.naver.com/oauth2.0/token?"
				+ "grant_type=authorization_code&"
				+ "client_id=od8MnK4Tb6sAdnv6ZeIT&"
				+ "client_secret=xTaUMV1Bmu&"
				+ "code=" + code + "&"
				+ "state=" + state;
		
		HashMap<String, Object> userInfo = new HashMap<>();
		
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
		
		userInfo.put("access", element.getAsJsonObject().get("access_token").getAsString()); 
		userInfo.put("refresh", element.getAsJsonObject().get("refresh_token").getAsString());
		
		return userInfo;
	}

	@Override
	public HashMap<String, Object> getUserInfo(HashMap<String, Object> userInfo) throws IOException {
		String reqUrl = "https://openapi.naver.com/v1/nid/me";
		
		URL url = new URL(reqUrl);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Authorization", "Bearer " + userInfo.get("access"));
		
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
		
		userInfo.put("userid", response.getAsJsonObject().get("id").getAsString());
		userInfo.put("profile", response.getAsJsonObject().get("profile_image").getAsString());
		userInfo.put("gender", response.getAsJsonObject().get("gender").getAsString());
		userInfo.put("email", response.getAsJsonObject().get("email").getAsString());
		userInfo.put("name", response.getAsJsonObject().get("name").getAsString());
		
		return userInfo;
	}

}
