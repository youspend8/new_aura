package com.bitcamp.aura.notice.service;

import java.util.HashMap;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;
import com.bitcamp.aura.notice.model.NoticeVO;

public interface NoticeService {
	
	public int writeNotice(NoticeVO noticevo, MultipartFile[] multipartFiles);
	public HashMap<String, Object> searchOne(int num);
	public List<NoticeVO> searchAll();
	public int deleteNotice(int num);
}
