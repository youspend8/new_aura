package com.bitcamp.aura.notice.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.model.NoticeVO;

public class NoticeServiceImpl implements NoticeService{

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
}
