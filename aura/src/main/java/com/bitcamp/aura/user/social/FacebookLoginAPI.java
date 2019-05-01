package com.bitcamp.aura.user.social;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.user.dao.UserMapper;
import com.bitcamp.aura.user.model.UserVO;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

@Service
public class FacebookLoginAPI implements FacebookLogin{
	
	@Autowired
	public UserMapper UM;
	
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
		System.out.println("accessToken :" + accessToken);
		
		//access_token => 개발자의 accessToken(accessToken 값이 똑같은걸로봐서 그냥 값을 떄려 박았음)
		String development_Token = "EAAGJn8EvWIcBALTDILEht0XtNaTPzCN6R2tiTMWVC6VKnk7I30bZBZBRowKW5ugliNTKg1SyFOzEDmLigBeo8qmFEbGtI1pnyDZBzK81kH1hqj3oVCX2qb5R1Gb2fiQvK6JNAXM2rg0pYiZB2SZC5OV9XGZB2WfX4ES6URHTr8qAZDZD";
		// TODO Auto-generated method stub
		String reqURL = "https://graph.facebook.com/debug_token?"+
		        		"client_id=432794210621575"+
		        		"&input_token=" + accessToken+
		        		"&access_token="+ development_Token;
        //input_token => 로그인한 사용자의 accessToken 
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
	public UserVO getUserInfo(String accessToken, String userId) {
		// TODO Auto-generated method stub
		
		UserVO uservo = new UserVO();
		
        String reqURL = "https://graph.facebook.com/"+userId
        		+ "?fields=name,email,id"
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
	        
//	        System.out.println("code : " + responseCode);
	        
	        JsonParser parser = new JsonParser();
	        JsonElement element = parser.parse(result);
	        
	        String name = element.getAsJsonObject().get("name").getAsString();
	        String email = element.getAsJsonObject().get("email").getAsString();
	        String userid = element.getAsJsonObject().get("id").getAsString();
	        
	        System.out.println("name : " + name + "\n"+"email :"+email + "\n" + "userid :"+userid);
	       
//	        UserInfo = name + email + userid;
	        //API 에서 받아오 name email set로 박음
	        
	        //가임일
			SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			System.out.println(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
			
			
			//페이스북 성별 없다
	        uservo.setGender(-1);
	        uservo.setEmail(email);
	        uservo.setName(name);
	        uservo.setAccessToken(accessToken);
	        uservo.setUserId(userid);
	        uservo.setRegDate(sim.format(new Date()));
	        uservo.setRegLocation(2);
	        uservo.setIsAdmin(0);
	        uservo.setPwMissCount(0);
	        uservo.setAuthorType(1);
	        
	        //selectAll
	        for(UserVO Vo : UM.selectAll())
	        	System.out.println("확인 :"+Vo);
	        
	        
//	        System.out.println("UserInfo =>" + UserInfo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return uservo;
	}
}
