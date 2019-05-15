package com.bitcamp.aura.review.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.review.common.HospitalCategory;
import com.bitcamp.aura.review.common.RestaurantCategory;
import com.bitcamp.aura.review.dao.ReviewFileMapper;
import com.bitcamp.aura.review.dao.ReviewMapper;
import com.bitcamp.aura.review.model.PlaceVO;
import com.bitcamp.aura.review.model.ReviewFileVO;
import com.bitcamp.aura.review.model.ReviewVO;
import com.bitcamp.aura.review.model.SearchParams;
import com.bitcamp.aura.review.util.FileUpload;

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
	public int deleteReview(int num) {
		// TODO Auto-generated method stub
		return mapper.delete(num);
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
	public List<HashMap<String, Object>> searchAddress(SearchParams params) {
		// TODO Auto-generated method stub
		List<ReviewVO> list = new ArrayList<>();
		if (params.getType() == 1) {
			list = mapper.selectRestaurantsByParams(params);
		} else if (params.getType() == 2) {
			list = mapper.selectHospitalsByParams(params);
		} else if (params.getType() == 3) {
			list = mapper.selectDigitalsByParams(params);
		}
		
		List<HashMap<String, Object>> reviewList = new ArrayList<>();
		
		list.stream().forEach(item -> {
			HashMap<String, Object> review = new HashMap<>();
			review.put("addr", ((PlaceVO)item).getAddr());
			review.put("title", item.getTitle());
			reviewList.add(review);		
		});
		
		return reviewList;
	}

	@Override
	public ReviewVO searchOne(int num) {
		// TODO Auto-generated method stub
		return mapper.selectOneForUpdateByNum(num);
	}

	@Override
	public HashMap<String, Object> searchByNum(HashMap<String, Object> params) {
		// TODO Auto-generated method stub
		HashMap<String, Object> reviewInfo = mapper.selectByNum(params);
		if (params.get("type").equals(1)) {
			reviewInfo.put("CATEGORY", RestaurantCategory.values()[((BigDecimal)reviewInfo.get("CATEGORY")).intValue()]);
		} else if (params.get("type").equals(2)) {
			reviewInfo.put("HOSPITALCATEGORY", HospitalCategory.values()[((BigDecimal)reviewInfo.get("HOSPITALCATEGORY")).intValue()]);
		}
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
