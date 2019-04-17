package com.bitcamp.aura.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitcamp.aura.user.dao.UserMapper;
import com.bitcamp.aura.user.model.UserVO;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public boolean login(String email, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean join(UserVO userVo) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modify(UserVO userVo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void withdraw(String nickname) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UserVO getUser(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserVO> getUsers(String nickname) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserVO> getAllUser() {
		// TODO Auto-generated method stub
		
		return userMapper.selectAll();
	}
}
