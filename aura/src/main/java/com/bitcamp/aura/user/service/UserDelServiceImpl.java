package com.bitcamp.aura.user.service;

import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitcamp.aura.user.model.UserDelVO;
import com.bitcamp.aura.user.persist.UserDelRepository;

@Service
@Transactional
public class UserDelServiceImpl implements UserDelService {

	@Autowired
	private UserDelRepository repository;
	
	@Override
	public UserDelVO create(UserDelVO userDelVo) {
		// TODO Auto-generated method stub
		return repository.save(userDelVo);
	}

	@Override
	public UserDelVO update(UserDelVO userDelVo) {
		// TODO Auto-generated method stub
		return repository.save(userDelVo);
	}

	@Override
	public void delete(String nickname) {
		// TODO Auto-generated method stub
		repository.deleteById(nickname);
	}
	
	@Override
	public UserDelVO read(String nickname) {
		// TODO Auto-generated method stub
		return repository.findById(nickname).orElseThrow(() -> new EntityNotFoundException());
	}

	@Override
	public List<UserDelVO> readAll() {
		// TODO Auto-generated method stub
		return StreamSupport.stream(repository.findAll().spliterator(), true)
				.collect(Collectors.toList());
	}

}
