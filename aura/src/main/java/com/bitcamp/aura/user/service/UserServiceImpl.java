package com.bitcamp.aura.user.service;

import org.springframework.stereotype.Service;

import com.bitcamp.aura.user.model.UserVO;

@Service
public class UserServiceImpl implements UserService {

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
	public void getUser(String nickname) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getUsers(String nickname) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getAllUser() {
		// TODO Auto-generated method stub

	}

}
