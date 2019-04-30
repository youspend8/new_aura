package com.bitcamp.aura.comment.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
@RequestMapping(value="/comment")
public class CommentController {

	@RequestMapping(value="/list")
	public String list() {
		return "reviewList";
	}
	
	@RequestMapping(value="/post")
	public String post() {
		return "reviewPost";
	}
	
	@RequestMapping(value="/write")
	public String write(MultipartHttpServletRequest comment) {
		
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
                mf.transferTo(new File(safeFile));
            } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
		
		return "main";
	}

}
