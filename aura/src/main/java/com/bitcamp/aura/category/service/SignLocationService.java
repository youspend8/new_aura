package com.bitcamp.aura.category.service;

import java.util.List;

import com.bitcamp.aura.category.model.SignLocationVO;

public interface SignLocationService {
	public int create (SignLocationVO signLocVo);
	public int update (SignLocationVO signLocVo);
	public int delete (int num);
	public SignLocationVO read (int num);
	public List<SignLocationVO> readAll();
}
