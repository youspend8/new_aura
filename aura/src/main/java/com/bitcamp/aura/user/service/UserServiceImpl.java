package com.bitcamp.aura.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.user.dao.UserMapper;
import com.bitcamp.aura.user.model.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public boolean login(String email, String password) {
		// TODO Auto-generated method stub
		UserVO originUser = userMapper.selectOneEmail(email);
		if (originUser != null) {
			if (originUser.getPassword().equals(password)) {
				return true;
			}
		}
		return false;
	}

	@Override
	public boolean join(UserVO userVo, String pwCheck) {
		// TODO Auto-generated method stub
		if (userMapper.selectOne(userVo.getNickname()) == null) {
			if (userVo.getPassword().equals(pwCheck)) {
				userMapper.insert(userVo);
				return true;
			}
		}
		
		return false;
	}

	@Override
	public void modify(UserVO userVo) {
		// TODO Auto-generated method stub
		userMapper.update(userVo);
	}

	@Override
	public void withdraw(String nickname) {
		// TODO Auto-generated method stub
		userMapper.delete(nickname);
	}

	@Override
	public UserVO getUser(String nickname) {
		// TODO Auto-generated method stub
		return userMapper.selectOne(nickname);
	}

	@Override
	public List<UserVO> getUsers(String nickname) {
		// TODO Auto-generated method stub
		return userMapper.selectMany(nickname);
	}

	@Override
	public List<UserVO> getAllUser() {
		// TODO Auto-generated method stub
		return userMapper.selectAll();
	}
}
