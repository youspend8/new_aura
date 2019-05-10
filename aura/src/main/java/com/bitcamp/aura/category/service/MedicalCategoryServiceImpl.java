package com.bitcamp.aura.category.service;

import com.bitcamp.aura.category.model.HospitalCategoryVO;
import com.bitcamp.aura.category.model.MedicalCategoryVO;
import com.bitcamp.aura.category.persist.HospitalCategoryRepository;
import com.bitcamp.aura.category.persist.MedicalCategoryRepository;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MedicalCategoryServiceImpl implements MedicalCategoryService {

	@Autowired
	private MedicalCategoryRepository repo;
	
	@Override
	public MedicalCategoryVO create(MedicalCategoryVO medCateVo) {
		// TODO Auto-generated method stub
		return repo.save(medCateVo);
	}

	@Override
	public Iterable<MedicalCategoryVO> createAll(Iterable<MedicalCategoryVO> iterator) {
		// TODO Auto-generated method stub
		return repo.saveAll(iterator);
	}

	@Override
	public MedicalCategoryVO update(MedicalCategoryVO medCateVo) {
		// TODO Auto-generated method stub
		return repo.save(medCateVo);
	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub
		repo.deleteById(num);
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		repo.deleteAll();
	}

	@Override
	public MedicalCategoryVO read(int num) {
		// TODO Auto-generated method stub
		return repo.findById(num).orElseThrow(() -> new EntityNotFoundException());
	}

	@Override
	public List<MedicalCategoryVO> readAll() {
		// TODO Auto-generated method stub
		return StreamSupport.stream(repo.findAll().spliterator(), true)
				.collect(Collectors.toList());
	}

}
