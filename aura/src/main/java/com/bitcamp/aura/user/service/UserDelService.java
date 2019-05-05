package com.bitcamp.aura.user.service;

import java.util.List;

import com.bitcamp.aura.user.model.UserDelVO;

public interface UserDelService {
	public UserDelVO create(UserDelVO userDelVo);
	public UserDelVO update(UserDelVO userDelVo);
	public void delete(String nickname);
	public UserDelVO read(String nickname);
	public List<UserDelVO> readAll();
}
