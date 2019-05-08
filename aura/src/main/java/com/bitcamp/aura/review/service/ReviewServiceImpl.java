package com.bitcamp.aura.review.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.review.common.RestaurantCategory;
import com.bitcamp.aura.review.dao.ReviewFileMapper;
import com.bitcamp.aura.review.dao.ReviewMapper;
import com.bitcamp.aura.review.model.SearchParams;
import com.bitcamp.aura.review.model.PlaceVO;
import com.bitcamp.aura.review.model.RestaurantVO;
import com.bitcamp.aura.review.model.ReviewFileVO;
import com.bitcamp.aura.review.model.ReviewVO;
import com.bitcamp.aura.review.util.FileUpload;
import com.sun.mail.imap.protocol.Item;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewMapper mapper;
	@Autowired
	private ReviewFileMapper fileMapper;
	@Autowired
	private FileUpload fileUpload;
	
	@Override
	public int writeReview(HashMap<String, Object> params, MultipartFile[] multipartFiles) {
		// TODO Auto-generated method stub
		params.put("addDate", new Date());
		int result = mapper.insert(params);
		int num = (int)params.get("num");
		fileUpload.uploadFiles(num, multipartFiles);
		return result;
	}
	
	@Override
	public List<ReviewVO> search(SearchParams params) {
		// TODO Auto-generated method stub
		List<ReviewVO> list = new ArrayList<>();
		if (params.getType() == 1) {
			list = mapper.selectRestaurantsByParams(params);
		} else if (params.getType() == 2) {
			list = mapper.selectHospitalsByParams(params);
		} else if (params.getType() == 3) {
			list = mapper.selectDigitalsByParams(params);
		}
		return setSearchFile(list);
	}

	@Override
	public List<String> searchAddress(SearchParams params) {
		// TODO Auto-generated method stub
		List<ReviewVO> list = new ArrayList<>();
		if (params.getType() == 1) {
			list = mapper.selectRestaurantsByParams(params);
		} else if (params.getType() == 2) {
			list = mapper.selectHospitalsByParams(params);
		}
		
		List<String> addrList =	list.stream()
									.map(item -> ((PlaceVO) item).getAddr())
									.collect(Collectors.toList());
		return addrList;
	}

	@Override
	public HashMap<String, Object> searchByNum(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		HashMap<String, Object> reviewInfo = mapper.selectByNum(params);
		reviewInfo.put("CATEGORY", RestaurantCategory.values()[((BigDecimal)reviewInfo.get("CATEGORY")).intValue()]);
		List<String> files = new ArrayList<>();
		for (ReviewFileVO r : fileMapper.selectByPostNum((Integer)params.get("num"))) {
			files.add(r.getFilePath());
		}
		reviewInfo.put("FILES", files);
		return reviewInfo;
	}

	@Override
	public List<ReviewVO> searchAll() {
		// TODO Auto-generated method stub
		return setSearchFile(mapper.selectAll());
	}

	@Override
	public <T> List<T> setSearchFile(List<T> list) {
		// TODO Auto-generated method stub
		list.forEach(review -> {
			List<String> files = fileMapper.selectByPostNum(((ReviewVO) review).getNum())
					.stream()
					.map(e -> e.getFilePath())
					.collect(Collectors.toList());
			((ReviewVO) review).setFiles(files);
		});
		
		return list;
	}

}
