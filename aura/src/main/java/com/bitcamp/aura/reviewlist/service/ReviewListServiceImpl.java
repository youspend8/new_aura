package com.bitcamp.aura.reviewlist.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitcamp.aura.reviewlist.model.ReviewListVO;
import com.bitcamp.aura.reviewlist.persist.ReviewListRepository;

@Service
@Transactional
public class ReviewListServiceImpl implements ReviewListService {

	@Autowired
	private ReviewListRepository reviewRepo;
	
	@Override
	public ReviewListVO create(ReviewListVO reviewListVo) {
		// TODO Auto-generated method stub
		return reviewRepo.save(reviewListVo);
	}

	@Override
	public Iterable<ReviewListVO> createAll(Iterable<ReviewListVO> iterator) {
		// TODO Auto-generated method stub
		return reviewRepo.saveAll(iterator);
	}

	@Override
	public ReviewListVO update(ReviewListVO reviewListVo) {
		// TODO Auto-generated method stub
		return reviewRepo.save(reviewListVo);
	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub
		reviewRepo.deleteById(num);
	}

	@Override
	public void deleteAllById(Iterable<ReviewListVO> iterator) {
		// TODO Auto-generated method stub
		reviewRepo.deleteAll(iterator);
	}

	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		reviewRepo.deleteAll();
	}

	@Override
	public ReviewListVO read(int num) {
		// TODO Auto-generated method stub
		return reviewRepo.findById(num).orElseThrow(() -> new EntityNotFoundException());
	}

	@Override
	public List<ReviewListVO> readAll() {
		// TODO Auto-generated method stub
		return StreamSupport.stream(reviewRepo.findAll().spliterator(), true)
				.collect(Collectors.toList());
	}

}
