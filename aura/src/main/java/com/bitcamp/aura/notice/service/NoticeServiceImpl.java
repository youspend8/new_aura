package com.bitcamp.aura.notice.service;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.dao.NoticeMapper;
import com.bitcamp.aura.notice.model.NoticeVO;
import com.bitcamp.aura.notice.persist.NoticeFileRepository;
import com.bitcamp.aura.review.util.FileUpload;

@Service
@Transactional
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
		int result = noticemapper.insert(noticevo);
		fileUpload.uploadNotice(noticevo.getNum(), multipartFiles);
		return result;
	}
	@Override
	public HashMap<String, Object> searchOne(int num) {
		HashMap<String, Object> notice = noticemapper.selectOne(num);
		notice.put("FILES", StreamSupport.stream(repo.findAll().spliterator(), true)
										.filter(n -> {
											return n.getPostNum() == ((BigDecimal)notice.get("NUM")).intValue();
										})
										.map(f -> f.getName())
										.collect(Collectors.toList()));
		return notice;
	}
	
	@Override
	public List<NoticeVO> searchAll() {
		
		return noticemapper.selectAll();
	}
	
	@Override
	public int deleteNotice(int num) {
		// TODO Auto-generated method stub
		int result = noticemapper.delete(num);

		return result;
	}
}
