package com.bitcamp.aura.reviewlist.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bitcamp.aura.reviewlist.dao.ReviewListMapper;
import com.bitcamp.aura.reviewlist.model.ReviewListSelectParamsVO;
import com.bitcamp.aura.reviewlist.model.ReviewListVO;

@Service
@Transactional
public class ReviewListServiceImpl implements ReviewListService {

	@Autowired
	private ReviewListMapper reviewMapper;

	@Override
	public int doReview(ReviewListVO reviewListVo) {
		// TODO Auto-generated method stub
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
