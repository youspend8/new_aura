package com.bitcamp.aura.user.social;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.user.dao.UserMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Service
public class GoogleLoginAPI implements GoogleLogin{
	
//	String state = new BigInteger(130, new SecureRandom()).toString(32);
	
	@Autowired
	public UserMapper UM;
	
	@Override
	public String getAccessToken(String code) {
		System.out.println("code" +code);
		String reqURL = "https://accounts.google.com/o/oauth2/v2/auth?"
				   + "client_id=965189490710-v4c0vpevad5c2m825dlombqvcv8l8evm.apps.googleusercontent.com"
				   + "&response_type"+code
				   + "&scope=https://www.googleapis.com/auth/plus.login" 
				   + "&redirect_uri=https://localhost:8000/user/oauth/google";
				 
		String accessToken = null;
		URL url = null;
		
		try {
			System.out.println("req"+reqURL);
			url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
			
	        String line = "";
	        String result = "";
	        
	        while ((line = br.readLine()) != null) {
	            result += line;
	        }
	        
	        int responseCode = conn.getResponseCode();
	        System.out.println("code : " + responseCode);
	        
	        JsonParser parser = new JsonParser();
	        JsonElement element = parser.parse(result);
	        
	        accessToken = element.getAsJsonObject().get("access_token").getAsString();
	        
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return accessToken;
	}

	@Override
	public String getUserId(String accessToken) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getUserInfo(String accessToken, String userId) {
		// TODO Auto-generated method stub
		return null;
	}


	}


