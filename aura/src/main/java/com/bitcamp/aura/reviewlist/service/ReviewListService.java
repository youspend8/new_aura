package com.bitcamp.aura.reviewlist.service;

import java.util.List;

import com.bitcamp.aura.reviewlist.model.ReviewListSelectParamsVO;
import com.bitcamp.aura.reviewlist.model.ReviewListVO;

public interface ReviewListService {
	public int doReview (ReviewListVO reviewListVo);
	public int cancleReviewByNum(int num);
	public int cancelReviewByParams(ReviewListSelectParamsVO params);
	public ReviewListVO reviewByNum(int num);
	public List<ReviewListVO> reviewListByParams(ReviewListSelectParamsVO params);
	public List<ReviewListVO> reviewList();
}
