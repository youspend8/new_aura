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
		
		return code ;
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


