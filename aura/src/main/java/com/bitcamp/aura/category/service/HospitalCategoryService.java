package com.bitcamp.aura.category.service;

import java.util.List;

import com.bitcamp.aura.category.model.HospitalCategoryVO;

public interface HospitalCategoryService {
	public HospitalCategoryVO create (HospitalCategoryVO hosCateVo);
	public Iterable<HospitalCategoryVO> createAll(Iterable<HospitalCategoryVO> iterator);
	public HospitalCategoryVO update (HospitalCategoryVO hosCateVo);
	public void delete (int num);
	public void deleteAll();
	public HospitalCategoryVO read (int num);
	public List<HospitalCategoryVO> readAll();
}
