package com.bitcamp.aura.review.service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
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
import com.bitcamp.aura.review.model.RestaurantSelectParamVO;
import com.bitcamp.aura.review.model.RestaurantVO;
import com.bitcamp.aura.review.model.ReviewFileVO;
import com.bitcamp.aura.review.model.ReviewVO;
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
		params.put("addDate", new SimpleDateFormat("yy/MM/dd").format(new Date()));
		params.put("addDate", new Date());
		System.out.println(params);
		mapper.insert(params);
		int result = (int)params.get("num");
		fileUpload.uploadFiles(result, multipartFiles);
		return 1;
	}
	
	@Override
	public List<ReviewVO> searchDigitals(RestaurantSelectParamVO params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewVO> searchHospitals(RestaurantSelectParamVO params) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<RestaurantVO> searchRestaurants(RestaurantSelectParamVO params) {
		// TODO Auto-generated method stub
		return setSearchFile(mapper.selectRestaurantsByParams(params));
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
		System.out.println(list);
		return StreamSupport.stream(list.spliterator(), true).collect(Collectors.toList());
	}

}
