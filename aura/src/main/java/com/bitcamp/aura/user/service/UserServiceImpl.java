package com.bitcamp.aura.user.service;

import java.util.List;

import org.omg.Messaging.SyncScopeHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.bitcamp.aura.user.dao.UserMapper;
import com.bitcamp.aura.user.model.UserVO;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public boolean apiLoginCheck(String userid) {
		return userMapper.selectOneUserid(userid) != null ? true : false;
	}
	
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
	public boolean join(@ModelAttribute UserVO userVo, String pwCheck,
			String addr,
			String addr_code,
			String addr_Detail,
			String address) {
		// TODO Auto-generated method stub
		//닉네임이 없으면 password 2개 체크해서 추가
		if (userMapper.selectOne(userVo.getNickname()) == null) {
			if (userVo.getPassword().equals(pwCheck)) {
				
				StringBuilder sb = new StringBuilder();
				StringBuilder Addr_code = sb.append(userVo.getAddr_code()+"\t");
				StringBuilder Addr = sb.append(userVo.getAddr()+"\t");
				StringBuilder Addr_Detail = sb.append(userVo.getAddr_Detail()+"\t");
				
				userVo.setAddress(sb.toString());
				
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

	@Override
	public boolean snsLogin(UserVO uservo) {
		//DB 속에 아무것도 같은게 없을떄 true
		if (userMapper.selectOne(uservo.getNickname()) == null || userMapper.selectOne(uservo.getEmail()) == null) {
			userMapper.insert(uservo);
			return true;
		}else {
			
			return false;
		}
	}
}
