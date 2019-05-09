package com.bitcamp.aura.review.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.bitcamp.aura.notice.model.NoticeFileVO;
import com.bitcamp.aura.notice.persist.NoticeFileRepository;
import com.bitcamp.aura.review.dao.ReviewFileMapper;
import com.bitcamp.aura.review.model.ReviewFileVO;

@Service
@Transactional
public class FileUpload {
	public static final String PATH = "/src/main/resources/static";

	@Autowired
	private ReviewFileMapper mapper;
	@Autowired
	private NoticeFileRepository repo;
	
	public void uploadFiles(int postNum, MultipartFile[] multipartFiles) {
		ReviewFileVO reviewFile = new ReviewFileVO();
		reviewFile.setPostNum(postNum);
		
		Arrays.asList(multipartFiles).forEach(file -> {
			reviewFile.setFilePath(upload(file));
			mapper.insert(reviewFile);
		});
	}
	
	public void uploadNotice(int postNum, MultipartFile[] multipartFiles) {
		List<NoticeFileVO> fileList = new ArrayList<>();
		Arrays.asList(multipartFiles).forEach(file -> {
			NoticeFileVO noticeFile = new NoticeFileVO();
			noticeFile.setPostNum(postNum);
			noticeFile.setName(upload(file));
			fileList.add(noticeFile);
		});
		
		repo.saveAll(fileList);
	}
	
	public String upload(MultipartFile multipartFile) {
		String fileName = new StringBuilder()
									.append("/files/")
									.append(System.currentTimeMillis() + "_")
									.append(multipartFile.getOriginalFilename())
									.toString();
		File file = new File(new StringBuilder()
								.append(new File("").getAbsolutePath())
								.append(PATH)
								.append(fileName)
								.toString());

		File path = new File(PATH);
		if (!path.isDirectory()) {
			path.mkdirs();
		}
		
		try (FileOutputStream fos = new FileOutputStream(file)) {
			byte[] b = multipartFile.getBytes();
			fos.write(b);
			fos.flush();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return fileName;
	}
}
