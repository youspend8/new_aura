package com.bitcamp.aura.category.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitcamp.aura.category.model.BadCategoryVO;
import com.bitcamp.aura.category.persist.BadCategoryRepository;

@Service
@Transactional
public class BadCategoryServiceImpl implements BadCategoryService {

	@Autowired
	private BadCategoryRepository repo;

	@Override
	public BadCategoryVO create(BadCategoryVO badCateVo) {
		// TODO Auto-generated method stub
		return repo.save(badCateVo);
	}

	@Override
	public Iterable<BadCategoryVO> createAll(Iterable<BadCategoryVO> iterator) {
		// TODO Auto-generated method stub
		return repo.saveAll(iterator);
	}

	@Override
	public BadCategoryVO update(BadCategoryVO badCateVo) {
		// TODO Auto-generated method stub
		return repo.save(badCateVo);
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
	public BadCategoryVO read(int num) {
		// TODO Auto-generated method stub
		return repo.findById(num).orElseThrow(() -> new EntityNotFoundException());
	}

	@Override
	public List<BadCategoryVO> readAll() {
		// TODO Auto-generated method stub
		return StreamSupport.stream(repo.findAll().spliterator(), true)
				.collect(Collectors.toList());
	}
}
