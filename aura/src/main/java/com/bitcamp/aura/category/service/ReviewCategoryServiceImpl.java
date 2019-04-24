package com.bitcamp.aura.category.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitcamp.aura.category.model.ReviewCategoryVO;
import com.bitcamp.aura.category.persist.ReviewCategoryRepository;

@Service
@Transactional
public class ReviewCategoryServiceImpl implements ReviewCategoryService {

	@Autowired
	private ReviewCategoryRepository repo;
	
	@Override
	public ReviewCategoryVO create(ReviewCategoryVO likeCateVo) {
		// TODO Auto-generated method stub
		return repo.save(likeCateVo);
	}

	@Override
	public Iterable<ReviewCategoryVO> createAll(Iterable<ReviewCategoryVO> iterater) {
		// TODO Auto-generated method stub
		return repo.saveAll(iterater);
	}
	
	@Override
	public ReviewCategoryVO update(ReviewCategoryVO likeCateVo) {
		// TODO Auto-generated method stub
		return repo.save(likeCateVo);
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
	public ReviewCategoryVO read(int num) {
		// TODO Auto-generated method stub
		return repo.findById(num).orElseThrow(() -> new EntityNotFoundException(null));
	}

	@Override
	public List<ReviewCategoryVO> readAll() {
		// TODO Auto-generated method stub
		return StreamSupport.stream(repo.findAll().spliterator(), true)
				.collect(Collectors.toList());
	}

}
