package com.bitcamp.aura.user.social;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Service
public class FacebookLoginAPI implements FacebookLogin{
	
	@Override
	public String getAccessToken(String code) {
		System.out.println(code);
		// TODO Auto-generated method stub
		String reqURL = "https://graph.facebook.com/v3.2/oauth/access_token?"
				   + "client_id=432794210621575"
				   + "&redirect_uri=http://localhost:8000/user/oauth/facebook"
				   + "&client_secret=6e5b5fe02179fee017ee778ca4b67d6a"
				   + "&code=" + code;
		
		String accessToken = null;
		URL url = null;
		try {
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
        String reqURL = "https://graph.facebook.com/debug_token?"+
        		"client_id=432794210621575"+
        		"&input_token=" + accessToken+
        		"&access_token=" + accessToken;
        String userId = null;
        URL url = null;
		try {
			url = new URL(reqURL);

	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
	        
	        String result = "";
	        String line = "";
	        
	        while ((line = br.readLine()) != null) {
	        	result += line;
	        }

	        int responseCode = conn.getResponseCode();
	        System.out.println("code : " + responseCode);
	        
	        JsonParser parser = new JsonParser();
	        JsonElement element = parser.parse(result);
	        
	        JsonElement data = element.getAsJsonObject().get("data").getAsJsonObject();
	        userId = data.getAsJsonObject().get("user_id").getAsString();
	        
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userId;
	}

	@Override
	public String getUserInfo(String accessToken, String userId) {
		// TODO Auto-generated method stub
		
		
        String reqURL = "https://graph.facebook.com/"+userId
        		+ "?fields=id,name,email"
        		+ "&access_token="+accessToken;
        
        String UserInfo = "";
        URL url = null;
        
		try {
			
			url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(),"UTF-8"));
	        
	        String result = "";
	        String line = "";
	        
	        while ((line = br.readLine()) != null) {
	        	result += line;
	        }
	        
	        int responseCode = conn.getResponseCode();
	        System.out.println("code : " + responseCode);
	        
	        JsonParser parser = new JsonParser();
	        JsonElement element = parser.parse(result);
	        
	        String name = element.getAsJsonObject().get("name").getAsString();
	        String email = element.getAsJsonObject().get("email").getAsString();
	        
	        System.out.println("name : "+name + "\n"+"email :"+email);
	        UserInfo = name + email;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return UserInfo;
	}
}
