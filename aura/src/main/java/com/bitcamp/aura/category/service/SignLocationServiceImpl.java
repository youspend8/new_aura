package com.bitcamp.aura.category.service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitcamp.aura.category.model.SignLocationVO;
import com.bitcamp.aura.category.persist.SignLocationRepository;

@Service
@Transactional
public class SignLocationServiceImpl implements SignLocationService {

	@Autowired
	private SignLocationRepository repo;

	@Override
	public int create(SignLocationVO signLocVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(SignLocationVO signLocVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public SignLocationVO read(int num) {
		// TODO Auto-generated method stub
		return repo.findById(num).orElseThrow(() -> new EntityNotFoundException(null));
	}

	@Override
	public List<SignLocationVO> readAll() {
		// TODO Auto-generated method stub
		return StreamSupport.stream(repo.findAll().spliterator(), false)
				.collect(Collectors.toList());
	}
}
