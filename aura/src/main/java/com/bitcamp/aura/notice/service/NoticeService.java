package com.bitcamp.aura.notice.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.model.NoticeVO;

public interface NoticeService {
	
	public int writeNotice(HashMap<String, Object> params, MultipartFile[] multipartFiles);
	public HashMap<String, Object> searchByNum(HashMap<String, Object> params);
	public NoticeVO searchOne(int num);
	public List<NoticeVO> searchAll();
}
