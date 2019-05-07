package com.bitcamp.aura.comment.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bitcamp.aura.comment.dao.CommentMapper;
import com.bitcamp.aura.comment.model.CommentFileVO;
import com.bitcamp.aura.comment.model.CommentVO;

@Service
@Transactional
public class CommentServicelmpl implements CommentService{
	
	@Autowired
	CommentMapper commentMapper;
	
	@Override
	public String insert_Comment(MultipartHttpServletRequest comment) {
		
		String review_Num = comment.getParameter("review_post_num");
		String nickname = comment.getParameter("nickname_post");
		String content = comment.getParameter("comment");
		
		String root = comment.getSession().getServletContext().getRealPath("/");
		String path = root + "resources/upload/";
		
		File dir = new File(path);
		
		if (!dir.isDirectory()) {
			dir.mkdirs();
		}
		
		CommentVO commentVo = new CommentVO();
		CommentFileVO commentFileVO = new CommentFileVO();
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		List<MultipartFile> fileList = comment.getFiles("files");
		
		commentVo.setComment_Date(sim.format(new Date()));
		commentVo.setComment_Contents(content);
		commentVo.setReview_Post_Num(Integer.parseInt(review_Num));
		
		System.out.println("내용 : " + content); // 내용 찍어봄
		
		for (MultipartFile mf : fileList) {
            String originFileName = mf.getOriginalFilename(); // 원본 파일 명
            
            if (originFileName.equals("")) {	// 파일이 아무것도 안들어왔을 때
            	
            	
            } else { 	// 파일이 들어왔을 때
//              long fileSize = mf.getSize(); // 파일 사이즈를 알고 싶다면 주석을 푸시오
//              System.out.println("fileSize : " + fileSize);
            	
                String safeFile = path + System.currentTimeMillis() + "\t" + originFileName;
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

	@Override
	public List<CommentVO> selectAllByNum(int postNum) {
		ArrayList<CommentVO> list = (ArrayList<CommentVO>) commentMapper.selectAllByNum(postNum);
			
		return list;
	}

}
