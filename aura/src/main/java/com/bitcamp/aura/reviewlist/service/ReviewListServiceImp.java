package com.bitcamp.aura.reviewlist.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitcamp.aura.review.dao.ReviewMapper;
import com.bitcamp.aura.review.model.ReviewVO;
import com.bitcamp.aura.review.service.ReviewServiceImpl;
import com.bitcamp.aura.reviewlist.dao.ReviewListMapper;
import com.bitcamp.aura.reviewlist.model.ReviewListSelectParamsVO;
import com.bitcamp.aura.reviewlist.model.ReviewListVO;

@Service
public class ReviewListServiceImp implements ReviewListService{
	
	@Autowired
	private ReviewListMapper reviewMapper;
	
	@Autowired
	private ReviewMapper reviewMapperForUpdate;

	@Override//insert하는놈(share, like, star)
	public int doReview(ReviewListVO params) {
		
		
		ReviewListSelectParamsVO param= new ReviewListSelectParamsVO();
		param.setNickname(params.getNickname());
		param.setPostNum(params.getPostNum());
		param.setReviewType(params.getReviewType());

		
		ReviewListVO review =reviewMapper.selectByParams(param);
	
	
		ReviewVO reviewUpdate=reviewMapperForUpdate.selectOneForUpdateByNum(params.getPostNum()); 
		System.out.println("11111@@@@@@@@@"+reviewUpdate);
		if(review==null) {
			SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			params.setDate(sim.format(new Date()));
			reviewMapper.insert(params);
			
			
				if(params.getReviewType()==1) {
					reviewUpdate.setShares(reviewUpdate.getShares()+1);
				}else if(params.getReviewType()==2) {
					reviewUpdate.setBookmark(reviewUpdate.getBookmark()+1);
				}else {
					reviewUpdate.setGoods(reviewUpdate.getGoods()+1);
				}
				reviewMapperForUpdate.updateReview(reviewUpdate);
			
		}else {
			reviewMapper.deleteByNum(review.getNum());
			
				if(params.getReviewType()==1) {
					reviewUpdate.setShares(reviewUpdate.getShares()-1);
				}else if(params.getReviewType()==2) {
					reviewUpdate.setBookmark(reviewUpdate.getBookmark()-1);
				}else {
					reviewUpdate.setGoods(reviewUpdate.getGoods()-1);
				}
				
				reviewMapperForUpdate.updateReview(reviewUpdate);
		}
		
	
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

	public boolean isShare(ReviewListSelectParamsVO params) {
		if(reviewMapper.selectByParams(params)!=null) {
			return true;
		}else {
			return false;
		}
	}
	
	
}
