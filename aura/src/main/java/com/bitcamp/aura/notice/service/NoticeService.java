package com.bitcamp.aura.notice.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.model.NoticeVO;
import com.bitcamp.aura.review.model.ReviewVO;

public interface NoticeService {
	
	public int writeNotice(NoticeVO noticevo, MultipartFile[] multipartFiles);
	public HashMap<NoticeVO, Object> searchOne(int num);
	public List<NoticeVO> searchAll();
}
