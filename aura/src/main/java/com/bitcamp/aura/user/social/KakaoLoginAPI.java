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

import org.springframework.stereotype.Service;

import com.bitcamp.aura.user.model.UserVO;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Service
public class KakaoLoginAPI implements KakaoLogin{
	UserVO userInfo = new UserVO();

	@Override
	public String getAccessToken(String code) {
		String reqUrl ="https://kauth.kakao.com/oauth/token";
		URL url;
		try {
			url = new URL(reqUrl);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
			conn.setDoOutput(true);
			
			 OutputStreamWriter bw = new OutputStreamWriter(conn.getOutputStream());
//	        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
	        StringBuilder sb = new StringBuilder();
	        sb.append("grant_type=authorization_code");
	        sb.append("&client_id=4d8be14468ba52dd371e3720b6c97958");
	        sb.append("&redirect_uri=http://localhost:8000/user/oauth/kakao");
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
	       String refresh_token = element.getAsJsonObject().get("refresh_token").getAsString();
	       userInfo.setAccessToken(accessToken);
	       userInfo.setRefreshToken(refresh_token);
	       
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
		
		String urlReq="https://kapi.kakao.com/v2/user/me";
		
		URL url;
		try {
			url = new URL(urlReq);
			HttpURLConnection conn= (HttpURLConnection) url.openConnection();
			
			conn.setRequestMethod("GET");
			conn.setRequestProperty("Authorization", "Bearer "+accessToken);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			
			String line = "";
			String result = "";
			
			while ((line = br.readLine()) != null) {
				result += line;
			}
			
		
			
			JsonParser parser =  new JsonParser();
			JsonElement element = parser.parse(result.toString());
			JsonElement kakao_account= element.getAsJsonObject().get("kakao_account");
			
			
			
			//비번틀린횟수
			userInfo.setPwMissCount(0);
			
			//가입방식(카카오)			
			userInfo.setRegLocation(4);
			System.out.println(element);
			//아이디
			userInfo.setUserId(element.getAsJsonObject().get("id").getAsString());
			
			//프로필
			if (element.getAsJsonObject().get("properties").getAsJsonObject().get("profile_image") != null) {
				userInfo.setProfile(element.getAsJsonObject().get("properties").getAsJsonObject().get("profile_image").getAsString());
			}
			
			//이메일 정보 
			if(kakao_account.getAsJsonObject().get("has_email").getAsBoolean()) {
				userInfo.setEmail(kakao_account.getAsJsonObject().get("email").getAsString());
			}
			
			//나이 정보 
			if(kakao_account.getAsJsonObject().get("has_age_range").getAsBoolean()) {
				userInfo.setAgeRange(Integer.parseInt(kakao_account.getAsJsonObject().get("age_range").getAsString().substring(0, 2)));
			}
			
			//가임일
			SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
			sim.format(new Date());
			userInfo.setRegDate(sim.format(new Date()));
			
			//성별 정보 
			if(kakao_account.getAsJsonObject().get("has_gender").getAsBoolean()) {
				
				if(kakao_account.getAsJsonObject().get("gender").getAsString().equals("male")) {
					userInfo.setGender(1);//남자
				}else {
					userInfo.setGender(0);//여자
				}
			}				
			return userInfo;
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return null;
	}



	

}
