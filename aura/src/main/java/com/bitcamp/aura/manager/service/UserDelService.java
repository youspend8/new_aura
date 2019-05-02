package com.bitcamp.aura.manager.service;

import java.util.List;

import com.bitcamp.aura.manager.model.UserDelVO;

public interface UserDelService {
	public UserDelVO create(UserDelVO userDelVo);
	public UserDelVO update(UserDelVO userDelVo);
	public void delete(String nickname);
	public UserDelVO read(String nickname);
	public List<UserDelVO> readAll();
}
