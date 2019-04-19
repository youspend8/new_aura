package com.bitcamp.aura;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.bitcamp.aura.category.model.BadCategoryVO;
import com.bitcamp.aura.category.model.SignLocationVO;
import com.bitcamp.aura.category.persist.BadCategoryRepository;
import com.bitcamp.aura.category.persist.SignLocationRepository;
import com.bitcamp.aura.user.service.UserService;
import com.fasterxml.jackson.databind.deser.CreatorProperty;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AuraApplicationTests {

	@Autowired
	private UserService userService;
	
	@Autowired
	private SignLocationRepository repo;
	
	@Autowired
	private BadCategoryRepository cRepo;
	
	@Test
	public void signTest() {
		BadCategoryVO bad1 = new BadCategoryVO();
		bad1.setName("욕설 및 폭언");
		BadCategoryVO bad2 = new BadCategoryVO();
		bad2.setName("광고성 글 게제");
		BadCategoryVO bad3 = new BadCategoryVO();
		bad3.setName("음란물 유포");
		
		cRepo.save(bad1);
		cRepo.save(bad2);
		cRepo.save(bad3);
		
		for (BadCategoryVO b : cRepo.findAll()) {
			System.out.println(b);
		}
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
