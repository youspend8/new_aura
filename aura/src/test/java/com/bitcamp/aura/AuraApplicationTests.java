package com.bitcamp.aura;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.bitcamp.aura.user.service.UserService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AuraApplicationTests {

	@Autowired
	private UserService userService;
	

	@Test
	public void signTest() {
		
	}
	
	// UserService Test
//	@Test
//	public void contextLoads() {
//		UserVO user2 = new UserVO(
//				"채훈22", 
//				"youspend8@gmail.com",
//				"1234",
//				"010-7768-7922",
//				"임채훈",
//				"960713-1******",
//				0,
//				"서울시 관악구 쑥고개로30길 24",
//				new Date(),
//				1,
//				new Date(),
//				1,
//				"1341234231432432",
//				"13243214321413241234",
//				4,
//				1,
//				"chaehun.png",
//				"fdsahjf2");
//
//		System.out.println(userService.login("youspend8@gmail.com", "1234"));
//		System.out.println(userService.join(user2, "1234"));
//		System.out.println(userService.login("youspend8@gmail.com", "1234"));
//		
//	}

}
