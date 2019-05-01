package com.bitcamp.aura.comment.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bitcamp.aura.comment.dao.CommentMapper;

@Service
@Transactional
public class CommentServicelmpl implements CommentService{

	@Autowired
	CommentMapper commentMapper;
	
	@Override
	public String insert_Comment(MultipartHttpServletRequest comment) {
		
		System.out.println("내용 : " + comment.getParameter("comment"));
		
		String root = comment.getSession().getServletContext().getRealPath("/");
		String path = root + "resources/upload/";
		
		File dir = new File(path);
		
		if (!dir.isDirectory()) {
			dir.mkdirs();
		}
		
		List<MultipartFile> fileList = comment.getFiles("comment_file");
		
		for (MultipartFile mf : fileList) {
            String originFileName = mf.getOriginalFilename(); // 원본 파일 명
            
//            long fileSize = mf.getSize(); // 파일 사이즈
//            System.out.println("fileSize : " + fileSize);

            System.out.println("originFileName : " + originFileName);
            
            String safeFile = path + System.currentTimeMillis() + originFileName;
            System.out.println(safeFile);
            
            try {
                mf.transferTo(new File(safeFile)); // 파일 저장
            } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
		
		
		return null;
	}

	@Override
	public String delete_Comment() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String update_Comment() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String selectAll_Comment() {
		// TODO Auto-generated method stub
		return null;
	}

}
