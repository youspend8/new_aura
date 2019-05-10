package com.bitcamp.aura.category.service;

import java.util.List;

import com.bitcamp.aura.category.model.MedicalCategoryVO;

public interface MedicalCategoryService {
	public MedicalCategoryVO create (MedicalCategoryVO medCateVo);
	public Iterable<MedicalCategoryVO> createAll(Iterable<MedicalCategoryVO> iterator);
	public MedicalCategoryVO update (MedicalCategoryVO medCateVo);
	public void delete (int num);
	public void deleteAll();
	public MedicalCategoryVO read (int num);
	public List<MedicalCategoryVO> readAll();
}
