package com.bitcamp.aura.category.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitcamp.aura.category.model.HospitalCategoryVO;
import com.bitcamp.aura.category.persist.HospitalCategoryRepository;

@Service
@Transactional
public class HospitalCategoryServiceImpl implements HospitalCategoryService {

	@Autowired
	private HospitalCategoryRepository repo;
	
	@Override
	public HospitalCategoryVO create(HospitalCategoryVO hosCateVo) {
		// TODO Auto-generated method stub
		return repo.save(hosCateVo);
	}

	@Override
	public Iterable<HospitalCategoryVO> createAll(Iterable<HospitalCategoryVO> iterator) {
		// TODO Auto-generated method stub
		return repo.saveAll(iterator);
	}

	@Override
	public HospitalCategoryVO update(HospitalCategoryVO hosCateVo) {
		// TODO Auto-generated method stub
		return repo.save(hosCateVo);
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
	public HospitalCategoryVO read(int num) {
		// TODO Auto-generated method stub
		return repo.findById(num).orElseThrow(() -> new EntityNotFoundException());
	}

	@Override
	public List<HospitalCategoryVO> readAll() {
		// TODO Auto-generated method stub
		return StreamSupport.stream(repo.findAll().spliterator(), true)
				.collect(Collectors.toList());
	}

}
