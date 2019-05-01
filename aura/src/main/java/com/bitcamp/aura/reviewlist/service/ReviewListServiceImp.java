package com.bitcamp.aura.reviewlist.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.reviewlist.dao.ReviewListMapper;
import com.bitcamp.aura.reviewlist.model.ReviewListSelectParamsVO;
import com.bitcamp.aura.reviewlist.model.ReviewListVO;

@Service
public class ReviewListServiceImp implements ReviewListService{
	
	@Autowired
	private ReviewListMapper reviewMapper;

	@Override//insert하는놈(share, like, star)
	public int doReview(ReviewListVO params) {
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		params.setDate(sim.format(new Date()));
		
		reviewMapper.insert(params);
		return 0;
	}

	@Override
	public int cancleReviewByNum(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int cancelReviewByParams(ReviewListSelectParamsVO params) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ReviewListVO reviewByNum(int num) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewListVO> reviewListByParams(ReviewListSelectParamsVO params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ReviewListVO> reviewList() {
		// TODO Auto-generated method stub
		return null;
	}

}
