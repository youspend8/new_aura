package com.bitcamp.aura.manager.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.stereotype.Service;

import com.bitcamp.aura.user.model.UserVO;

@Service
public class JsonFormatConverter {

	public void dateFormatConverter (UserVO user) {
		try {
			user.setDelDate(new SimpleDateFormat("yyyy-MM-dd")
					.format(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
							.parse(user.getDelDate())));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
