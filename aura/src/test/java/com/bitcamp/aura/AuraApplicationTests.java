package com.bitcamp.aura;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.bitcamp.aura.user.dao.UserMapper;
import com.bitcamp.aura.user.model.UserVO;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AuraApplicationTests {

	@Autowired
	private UserMapper userDao;
	
	@Test
	public void contextLoads() {
		for (UserVO user : userDao.selectAll()) {
			System.out.println(user);
		}
	}

}
