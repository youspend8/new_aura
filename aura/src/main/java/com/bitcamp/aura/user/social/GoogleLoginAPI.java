package com.bitcamp.aura.user.social;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.user.dao.UserMapper;
import com.bitcamp.aura.user.model.UserVO;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class GoogleLoginAPI implements GoogleLogin{
	
	UserVO userInfo = new UserVO();
	
	@Autowired
	public UserMapper UM;
	
	@Override
	public String getAccessToken(String code) {

		String reqURL = "https://accounts.google.com/o/oauth2/token";
		URL url;
		
		try {
			url = new URL(reqURL);
			HttpURLConnection conn =(HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true);
			
			OutputStreamWriter bw = new OutputStreamWriter(conn.getOutputStream());
	        StringBuilder sb = new StringBuilder();
	        sb.append("grant_type=authorization_code");
	        sb.append("&client_id=965189490710-v4c0vpevad5c2m825dlombqvcv8l8evm.apps.googleusercontent.com");
	        sb.append("&client_secret=00FT0R0DraT3vNHQZTb7b3DQ");
	        sb.append("&redirect_uri=http://localhost:8000/user/oauth/google");
	        sb.append("&scope=openid%20email%20profile");
	        sb.append("&code=" + code);
	        bw.write(sb.toString());
	        bw.flush();
	        
	        BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));

	        String inputLine; 
	        StringBuffer response = new StringBuffer();
	        
	        while ((inputLine = in.readLine()) != null){
	        	response.append(inputLine); 
	        }
	        in.close();
	        
	       JsonParser parser = new JsonParser();
	       JsonElement element = parser.parse(response.toString());
	       String accessToken = element.getAsJsonObject().get("access_token").getAsString();

	       userInfo.setAccessToken(accessToken);
	       return accessToken;
	       
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return null;
	}

	@Override
	public UserVO getUserInfo(String accessToken) {
		
		String reqURL = "https://www.googleapis.com/userinfo/v2/me";
		URL url;
	
		try {
			url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "Bearer " + accessToken);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			System.out.println("element :"+ element);

			userInfo.setUserId(element.getAsJsonObject().get("id").getAsString());
			userInfo.setProfile(element.getAsJsonObject().get("picture").getAsString());
			userInfo.setName(element.getAsJsonObject().get("name").getAsString());
			userInfo.setPwMissCount(0);
			SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			userInfo.setRegDate(sim.format(new Date()));
			userInfo.setGender(-1); // 구글 성별 무.
			userInfo.setIsAdmin(0);
			userInfo.setRegLocation(5);

			System.out.println("userInfo:" + userInfo);

			return userInfo;

		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		성별, 닉네임, 연령대 
		return null;
		}

	}


