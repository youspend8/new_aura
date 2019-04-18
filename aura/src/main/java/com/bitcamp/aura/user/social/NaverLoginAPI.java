package com.bitcamp.aura.user.social;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class NaverLoginAPI implements NaverLogin{

	@Override
	public String getAccessToken(String code, String state) throws IOException {
		String reqUrl = "https://nid.naver.com/oauth2.0/token?"
				+ "grant_type=authorization_code&"
				+ "client_id=od8MnK4Tb6sAdnv6ZeIT&"
				+ "client_secret=xTaUMV1Bmu&"
				+ "code=" + code + "&"
				+ "state=" + state;
		
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
		
		String accessToken = element.getAsJsonObject().get("access_token").getAsString();
		String refreshToken = element.getAsJsonObject().get("refresh_token").getAsString();
		
		return accessToken;
	}

	@Override
	public String getUserInfo(String accessToken) throws IOException {
		String reqUrl = "https://openapi.naver.com/v1/nid/me";
		
		URL url = new URL(reqUrl);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Authorization", "Bearer " + accessToken);
		
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
		
		String name = response.getAsJsonObject().get("name").getAsString();
		
		System.out.println(name);
		
		return null;
	}

}
