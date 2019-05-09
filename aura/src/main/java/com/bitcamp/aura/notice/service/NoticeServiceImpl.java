package com.bitcamp.aura.notice.service;

import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.model.NoticeVO;
import com.bitcamp.aura.notice.persist.NoticeFileRepository;
import com.bitcamp.aura.review.model.ReviewVO;

public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeFileRepository repo;
	
	@Override
	public int writeNotice(HashMap<String, Object> params, MultipartFile[] multipartFiles) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public HashMap<String, Object> searchByNum(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NoticeVO searchOne(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<NoticeVO> searchAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public <T> List<T> setSearchFile(List<T> list) {
		// TODO Auto-generated method stub
		
		return list;
	}
}
