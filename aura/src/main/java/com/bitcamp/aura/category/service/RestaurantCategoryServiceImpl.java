package com.bitcamp.aura.category.service;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitcamp.aura.category.model.RestaurantCategoryVO;
import com.bitcamp.aura.category.persist.RestaurantCateRepository;

@Service
@Transactional
public class RestaurantCategoryServiceImpl implements RestaurantCategoryService {

	@Autowired
	private RestaurantCateRepository repo;
	
	@Override
	public RestaurantCategoryVO create(RestaurantCategoryVO restCateVo) {
		// TODO Auto-generated method stub
		return repo.save(restCateVo);
	}

	@Override
	public Iterable<RestaurantCategoryVO> createAll(Iterable<RestaurantCategoryVO> iterator) {
		// TODO Auto-generated method stub
		return repo.saveAll(iterator);
	}

	@Override
	public RestaurantCategoryVO update(RestaurantCategoryVO restCateVo) {
		// TODO Auto-generated method stub
		return repo.save(restCateVo);
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
	public RestaurantCategoryVO read(int num) {
		// TODO Auto-generated method stub
		return repo.findById(num).orElseThrow(() -> new EntityNotFoundException());
	}

	@Override
	public List<RestaurantCategoryVO> readAll() {
		// TODO Auto-generated method stub
		return StreamSupport.stream(repo.findAll().spliterator(), true)
				.collect(Collectors.toList());
	}

}
