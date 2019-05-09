package com.bitcamp.aura.notice.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.dao.NoticeMapper;
import com.bitcamp.aura.notice.model.NoticeVO;
import com.bitcamp.aura.notice.persist.NoticeFileRepository;
import com.bitcamp.aura.review.model.ReviewVO;
import com.bitcamp.aura.review.util.FileUpload;

public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeFileRepository repo;
	
	@Autowired
	private NoticeMapper noticemapper;
	
	@Autowired
	private FileUpload fileUpload;
	
	@Override
	public int writeNotice(NoticeVO noticevo, MultipartFile[] multipartFiles) {
		//시간은 자동으로 저장해놓기
		noticevo.setWriterDate(new SimpleDateFormat("yy/MM/dd").format(new Date()));
		
		fileUpload.uploadNotice(noticevo.getNum(), multipartFiles);
		int result = noticemapper.insert(noticevo);
		
		return result;
	}
	@Override
	public List<NoticeVO> searchOne(int num) {
		
		return noticemapper.selectOne(num);
	}
	@Override
	public List<NoticeVO> searchAll() {
		
		return noticemapper.selectAll();
	}
}
