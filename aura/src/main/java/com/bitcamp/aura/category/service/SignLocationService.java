package com.bitcamp.aura.category.service;

import java.util.Iterator;
import java.util.List;

import com.bitcamp.aura.category.model.SignLocationVO;

public interface SignLocationService {
	public SignLocationVO create (SignLocationVO signLocVo);
	public Iterable<SignLocationVO> createAll (Iterable<SignLocationVO> iterator);
	public SignLocationVO update (SignLocationVO signLocVo);
	public void delete (int num);
	public void deleteAll();
	public SignLocationVO read (int num);
	public List<SignLocationVO> readAll();
}
